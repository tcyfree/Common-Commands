#一、安装gitlab
    docker run --name='gitlab' -d \
    --net=gitlab_net \
    --publish 8090:80 \
    --restart always \
    --volume /root/docker/gitlab/config:/etc/gitlab \
    --volume /root/docker/gitlab/logs:/var/log/gitlab \
    --volume /root/docker/gitlab/data:/var/opt/gitlab \
    gitlab/gitlab-ce:9.5.4-ce.0
    
Tips: 由于gitlab特别耗费内存，官方推荐2核4G。而阿里云ECS默认是没有swap交换分区，故需要手动创建：https://www.imydl.tech/lnmp/240.html
这个 bs 的单位可以用 man dd 进行查看，有详细的说明，我这里创建 4G
dd if=/dev/zero of=/mnt/swapfile bs=1MB count=4096

这里把刚才创建的文件做成swap文件
    mkswap /mnt/swapfile

开启swap
    swapon /mnt/swapfile

查看状态
    swapon -s

查看内存状态
    free -h

=========以下操作能确保 swap 更安全，且重启后有效===========

查看 vim /etc/rc.local 如果有 swapoff -a 修改为 swapon -a

    vim /etc/rc.local

设置自动挂载
    vim /etc/fstab

    /mnt/swapfile swap swap defaults 0 0

权限设置

    chown root:root /mnt/swapfile

    chmod 0600 /mnt/swapfile

查看 swappiness 值。
    cat /proc/sys/vm/swappiness

    如果为 0 ，则将其改为 10

    sysctl vm.swappiness=10

永久设置 swappiness，如果该文件里没有，则追加 vm.swappiness = 10
    vim /etc/sysctl.conf

重启，那些永久设置项就生效了。
    PS：swappiness=0 的时候表示最大限度使用物理内存，然后才是 swap 空间，swappiness＝100的时候表示积极的使用swap分区，并且把内存上的数据及时的搬运到swap空间里面。上述都是亲测有效的。

#二、安装gitlab-runner

    sudo docker pull gitlab/gitlab-runner:latest

    sudo docker run -d --name gitlab-runner --restart always \
         -v /srv/gitlab-runner/config:/etc/gitlab-runner \
         -v /var/run/docker.sock:/var/run/docker.sock \
         gitlab/gitlab-runner:latest
    \#注册runner
    sudo docker exec -it gitlab-runner gitlab-ci-multi-runner register
    #输入CI URL
    Please enter the gitlab-ci coordinator URL (e.g. https://gitlab.com/):
    http://gitlab.weipeiapp.com:10080/

    #输入CI Token
    Please enter the gitlab-ci token for this runner:
    eU9zcqjReSozw6a1RLL8

    #输入描述信息
    Please enter the gitlab-ci description for this runner:
    [f6c7de92c743]: Gitlab CI usage

    #输入标签信息
    Please enter the gitlab-ci tags for this runner (comma separated):
    v1.0

    #是否运行未标记的版本
    Whether to run untagged builds [true/false]:
    [false]: true

    #是否运行当前项目
    Whether to lock the Runner to current project [true/false]:
    [true]: true

    Registering runner... succeeded                     runner=eU9zcqjR

    #输入Runner的类型
    Please enter the executor: shell, virtualbox, docker-ssh+machine, kubernetes, docker, docker-ssh, parallels, ssh, docker+machine:
    shell

    Runner registered successfully. Feel free to start it, but if it's running already the config should be automatically reloaded!

