安装rancher  单点部署 其他部署参考rancher安装文档

sudo docker run -d --restart=unless-stopped -p 8080:8080 rancher/server  
 
访问
http://47.105.137.250:8080/