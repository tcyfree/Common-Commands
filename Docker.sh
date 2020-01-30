清除所有已经停止运行的容器
$ docker container prune

停止所有的container，这样才能够删除其中的images：

docker stop $(docker ps -a -q)

docker rm $(docker ps -a -q)

docker rm -f xxx

参考文章 https://yq.aliyun.com/articles/110806?spm=5176.8351553.0.0.499f1991B4V0Ly
docker版本重要！！！参考rancher支持的docker版本 https://www.cnrancher.com/docs/rancher/v1.x/cn/infrastructure/hosts/#docker%E7%89%88%E6%9C%AC%E9%80%82%E7%94%A8%E5%AF%B9%E6%AF%94

# step 1: 安装必要的一些系统工具
sudo yum install -y yum-utils device-mapper-persistent-data lvm2

# Step 2: 添加软件源信息
sudo yum-config-manager --add-repo http://mirrors.aliyun.com/docker-ce/linux/centos/docker-ce.repo

# Step 3: 更新yum
sudo yum makecache fast

# 列出所有可安装的版本
yum list docker-ce.x86_64 --showduplicates | sort -r  

# Step 4:安装制定版本的 Docker-CE
sudo yum -y install docker-ce-17.12.1.ce-1.el7.centos

# Step 5:加入开机启动
sudo systemctl enable docker

# Step6:启动
sudo systemctl start docker
