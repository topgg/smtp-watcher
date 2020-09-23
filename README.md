# smtp-watcher
## Shell脚本 SMTP 服务监控程序 监控范围 postfix opendkim Saslauth
## 适用场景
  - 多个linux发行版本并存，如果仅仅是 Centos7 , 创建systemctl unit 也是个好办法
  - 批量smtp服务器
  - 多个postfix 版本并存
  - 拥有root权限
## 使用方法

如下命令粘贴至命令

#### 安装脚本

```
sudo wget --no-check-certificate  https://raw.githubusercontent.com/topgg/smtp-watcher/master/install.sh && sudo chmod 755 install.sh && sh install.sh
```
####  日志文件

mkdir /var/log/crontab
touch /var/log/crontab/smtpwatcher.log


