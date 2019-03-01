#一、安装gitlab
    docker run --name='gitlab' -d \
    --net=gitlab_net \
    --publish 8090:80 \
    --restart always \
    --volume /root/docker/gitlab/config:/etc/gitlab \
    --volume /root/docker/gitlab/logs:/var/log/gitlab \
    --volume /root/docker/gitlab/data:/var/opt/gitlab \
    gitlab/gitlab-ce:9.5.4-ce.0
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

