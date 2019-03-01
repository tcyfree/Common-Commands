1. nginx配置文件路径：/usr/local/nginx/conf/vhost
  修改配置后重启Nginx
检查配置文件是否报错：/usr/local/nginx/sbin/nginx -t
  nginx -s reload 
或/usr/local/nginx/sbin/nginx -s reload

nginx -V #显示nginx版本及配置文件等信息

2. 停止nginx: /usr/local/nginx/sbin/nginx -s stop
   启动：/usr/local/nginx/sbin/nginx