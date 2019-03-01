**1. PHP配置文件**
  vi /usr/local/php/etc/php.ini
  /etc/init.d/php-fpm restart

寻找disable_functions字符串

**2. log**
$error_log = LOG_PATH.'wx_notify_error.log';
file_put_contents($error_log, $msg.' '.date('Y-m-d H:i:s')."\r\n", FILE_APPEND);

**3.** 修改 composer.json 后需使用命令重新加载：composer dumpautoload