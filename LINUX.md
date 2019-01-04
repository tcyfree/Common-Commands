1. 查看运行情况：netstat -tnl 查看所有端口：netstat -lntp

2. 查看服务：ps -aux | grep nginx 查看端口号：netstat -anp|grep 9501

3. 解压：tar -zxvf 压缩包名.tar.gz

4. make depend 检查依赖库

5. ctrl+u 删除到命令行的开始处

6. curl -v http://www.baidu.com >/dev/null #-v 同时显示状态码等信息
   curl -I http://api.go-qxd.com/static/images/nx-xds-logo.jpg # 只请求头信息
   
7. diff 文件1 文件2

8. ls -lh
   total 1.1G
   -rw-r--r-- 1 root root 798K Aug 14 15:51 access.log
   -rw-r--r-- 1 root root 210K Nov 30 13:11 nginx_error.log
   -rw-r--r-- 1 root root 1.1G Jan 10 16:03 test-th5.log
   
9.普通用户改为root用户
vim /etc/passwd
将x:1000改为0
qmadmin:x:0:1000::/home/qmadmin:/bin/bash
      
