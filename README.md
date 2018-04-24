1.PHP配置文件
  vi /usr/local/php/etc/php.ini
  /etc/init.d/php-fpm restart

寻找disable_functions字符串

2.log
$error_log = LOG_PATH.'wx_notify_error.log';
file_put_contents($error_log, $msg.' '.date('Y-m-d H:i:s')."\r\n", FILE_APPEND);

3.nginx配置文件路径：/usr/local/nginx/conf/vhost
  修改配置后重启Nginx
检查配置文件是否报错：/usr/local/nginx/sbin/nginx -t
  nginx -s reload 
或/usr/local/nginx/sbin/nginx -s reload

nginx -V #显示nginx版本及配置文件等信息


4.批量清空数据表

SELECT CONCAT('truncate table ',table_name,';') FROM information_schema.`TABLES` WHERE table_schema='数据库名';

5.清空Redis所有数据：flushall

6.ls -lh
total 1.1G
-rw-r--r-- 1 root root 798K Aug 14 15:51 access.log
-rw-r--r-- 1 root root 210K Nov 30 13:11 nginx_error.log
-rw-r--r-- 1 root root 1.1G Jan 10 16:03 test-th5.log

7.数据库表缓存命令：php think optimize:schema

8.cd /d d:\phpStudy\WWW\svn.nuan-x.com\admin.go-qxd.com

9.停止nginx: /usr/local/nginx/sbin/nginx -s stop
启动：/usr/local/nginx/sbin/nginx

10.查看运行情况：netstat -tnl

11.查看服务：ps -aux | grep nginx 查看端口号：netstat -anp|grep 9501

12.解压：tar -zxvf 压缩包名.tar.gz

13.make depend 检查依赖库

14. ctrl+u 删除到命令行的开始处

15. curl -v http://www.baidu.com >/dev/null #-v 同时显示状态码等信息
    curl -I http://api.go-qxd.com/static/images/nx-xds-logo.jpg # 只请求头信息

16.diff 文件1 文件2




