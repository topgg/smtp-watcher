# smtp-watcher
## Shell脚本 SMTP 服务监控程序 监控范围 postfix opendkim Saslauth
## 使用方法 
#### 1. 下载好此脚本
wget --no-check-certificate  https://raw.githubusercontent.com/topgg/smtp-watcher/master/smtpwatcher.sh
#### 2. 在 crontab中添加
> 2 * * * * root sudo smtpwatcher.sh 2>&1  /dev/null
