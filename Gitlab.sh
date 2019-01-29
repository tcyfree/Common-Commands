
docker run --name='gitlab-test' -d \
       --net=gitlab_net \
       --publish 8093:80 \
       --restart always \
       --volume /root/docker/gitlab/config:/etc/gitlab \
       --volume /root/docker/gitlab/logs:/var/log/gitlab \
       --volume /root/docker/gitlab/data:/var/opt/gitlab \
       -e 'GITLAB_PORT=8093'\
       -e 'GITLAB_SSH_PORT=8093'\
       -e 'GITLAB_HOST=http://39.104.67.146'\
       gitlab/gitlab-ce:latest