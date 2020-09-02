# smtp-watcher
## 一个Shell 下的 SMTP 服务监控程序 监控范围 postfix opendkim Saslauth

## 使用方法 下载好此脚本后在 crontab中添加
> 2 * * * * root sudo smtpwatcher.sh 2>&1  /dev/null
