# smtp-watcher
## Shell脚本 SMTP 服务监控程序 监控范围 postfix opendkim Saslauth
## 适用场景
  - 多个linux发行版本并存，如果仅仅是 Centos7 , 创建systemctl unit 也是个好办法
  - 批量smtp服务器
  - 多个postfix 版本并存
  - 拥有root权限，但用维护账号执行
## 使用方法

如下命令粘贴至命令行
```
sudo mkdir /scripts
sudo chmod 755 /scripts
cd  /scripts
wget https://raw.githubusercontent.com/topgg/smtp-watcher/master/addcron.sh && sudo addcron.sh
sudo mkdir /var/log/crontab
sudo touch /var/log/crontab/smtpwatcher.logs
sudo chmod 666 /var/log/crontab/smtpwatcher.logs
sudo wget --no-check-certificate  https://raw.githubusercontent.com/topgg/smtp-watcher/master/smtpwatcher.sh && sudo chmod 755 smtpwatcher.sh
```

#### 1. 下载此脚本赋予可执行权限
wget --no-check-certificate  https://raw.githubusercontent.com/topgg/smtp-watcher/master/smtpwatcher.sh && chmod 755 smtpwatcher.sh
#### 2. 在 crontab中添加
echo ' 2 * * * * root sudo smtpwatcher.sh 2>&1>/var/log/crontab/smtpwatcher.log' >>/etc/crontab
#### 3. 日志文件

mkdir /var/log/crontab
touch /var/log/crontab/smtpwatcher.log
chmod 

安装脚本

```
sudo su
mkdir/root/scripts
cd /root/scripts
mkdir /var/log/crontabc
touch /var/log/crontab/smtpwatcher.log
wget --no-check-certificate  https://raw.githubusercontent.com/topgg/smtp-watcher/master/smtpwatcher.sh && chmod 755 smtpwatcher.sh
echo ' 2 * * * * root sudo smtpwatcher.sh' >>/etc/crontabs
```

