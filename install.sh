#!/bin/bash
sudo mkdir /scripts 2>/dev/null && sudo chmod 755 /scripts
sudo cd /scripts
sudo wget --no-check-certificate  https://raw.githubusercontent.com/topgg/smtp-watcher/master/smtpwatcher.sh && sudo chmod 755 smtpwatcher.sh
sudo crontab -l > conf ; echo " */2 * * * * root sh /scripts/smtpwatcher.sh" >> conf && crontab conf && rm -rf conf 
sudo mkdir /var/log/crontab 2>/dev/null
sudo touch /var/log/crontab/smtpwatcher.log && sudo chmod 666 /var/log/crontab/smtpwatcher.log
