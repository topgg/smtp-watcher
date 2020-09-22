#!/bin/bash
echo ' 2 * * * * $USER sudo /scripts/smtpwatcher.sh' >>/etc/crontabs
