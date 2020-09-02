#!/bin/sh
file_name="/home/jumpol/Crontabrestart.log"  #重启脚本的日志，保证可写入，保险一点执行 chmod 777 Crontabrestart.log
pid=0
proc_num_postfix() 
{
    num=`ps -ef | grep 'postfix/master' | grep -v grep | wc -l`  #此处'sh /home/work/run.sh'替代为实际的，尽量准确，避免误kill
    echo $num 
}
proc_num_saslauthd() 
{
    num=`ps -ef | grep '/usr/sbin/saslauthd' | grep -v grep | wc -l`  #此处'sh /home/work/run.sh'替代为实际的，尽量准确，避免误kill
    echo $num 
}

proc_num_opendkim() 
{
    num=`ps -ef | grep '/usr/sbin/saslauthd' | grep -v grep | wc -l`  #此处'sh /home/work/run.sh'替代为实际的，尽量准确，避免误kill
    echo $num 
}

#proc_id() 获取进程ID
#{  
#    pid=`ps -ef | grep 'sh /home/work/run.sh' | grep -v grep | awk '{print $2}'`  #此处'sh /home/work/run.sh'也替代为实际的
#}


number[0]=$(proc_num_postfix)  #执行proc_num()，获取进程数
number[1]=$(proc_num_saslauthd)
number[2]=$(proc_num_opendkim)

echo ${number[*]}

if [ ${number[0]} -eq 0 ]  #如果没有该进程，则重启
then
    echo '重启Postfix'
    sudo /etc/init.d/postfix restart
    #启动程序的命令
   
    echo ${pid}, `date` >> $file_name  #把重启的进程号、时间 写入日志
fi


if [ ${number[1]} -eq 0 ]  #如果没有该进程，则重启
then
    echo '重启saslauth'
    sudo /usr/sbin/saslauthd -m /var/run/saslauthd -a pam
    #启动程序的命令
   
    echo ${pid}, `date` >> $file_name  #把重启的进程号、时间 写入日志
fi

if [ ${number[2]} -eq 0 ]  #如果没有该进程，则重启
then
    echo '重启opendkim'
    sudo /usr/sbin/opendkim -x /etc/opendkim.conf -P /var/run/opendkim/opendkim.pid    #启动程序的命令
   
    echo ${pid}, `date` >> $file_name  #把重启的进程号、时间 写入日志
fi
