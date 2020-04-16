1. 查看运行情况：netstat -tnl 查看所有端口：netstat -lntp

2. 查看服务：ps -aux | grep nginx 查看端口号：netstat -anp|grep 9501

3. 解压：tar -zxvf 压缩包名.tar.gz

4. make depend 检查依赖库

5. ctrl+u 删除到命令行的开始处 ctrl+a 光标移动到命令头    ctrl + e 光标移动到命令尾

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

10.查找配置文件 whereis nginx.conf

11. /usr/ 这是一个非常重要的文件，用户的很多应用程序和文件都放在这个目录下，类似于Windows下的Program目录。
    /bin:是Binary的缩写, 这个目录存放着最经常使用的命令。
    /etc：所有的系统管理所需要的配置文件和子目录。
    /home：存放普通用户的主目录，在Linux中每个用户都有一个自己的目录，一般该目录名是以用户的账号命名的。
    /opt：这是给主机额外安装软件所摆放的目录。比如你安装一个ORACLE数据库则就可以放到这个目录下。默认是空的。
    /root：该目录为系统管理员，也称作超级权限者的用户主目录。
    /sbin：s就是Super User的意思，这里存放的是系统管理员使用的系统管理程序。
    /var：这个目录中存放着在不断扩充着的东西，我们习惯将那些经常被修改的目录放在这个目录下。包括各种日志文件。
    
12.linux下的find文件查找命令与grep文件内容查找命令.
      
