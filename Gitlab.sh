
docker run --name='gitlab' -d \
       --net=gitlab_net \
       --publish 8090:80 \
       --restart always \
       --volume /root/docker/gitlab/config:/etc/gitlab \
       --volume /root/docker/gitlab/logs:/var/log/gitlab \
       --volume /root/docker/gitlab/data:/var/opt/gitlab \
       -e 'GITLAB_PORT=8093'\
       -e 'GITLAB_SSH_PORT=8093'\
       -e 'GITLAB_HOST=http://39.104.67.146'\
       gitlab/gitlab-ce:latest
       
       
       
 docker run --name='gitlab' -d \
       --net=gitlab_net \
       --publish 8090:80 \
       --restart always \
       --volume /root/docker/gitlab/config:/etc/gitlab \
       --volume /root/docker/gitlab/logs:/var/log/gitlab \
       --volume /root/docker/gitlab/data:/var/opt/gitlab \
       gitlab/gitlab-ce:9.5.4-ce.0
