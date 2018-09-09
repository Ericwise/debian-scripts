#!/bin/bash
#Connect to MyHost
#You should configure your hosts file(/etc/hosts),frpserver and frpclient 
#if you want to use this scripts.
#Please input your vps ip in hosts,
#Example: 
#127.0.0.1 myhost
while true
do
    echo "1)Debian Server"
    echo "2)Debian Home"
    echo "3)Manjaro AsusBox"
    echo "4)Raspberry Pi"
    read -p "Please select a host:" HOSTNUM
    echo "Selected $HOSTNUM "
    case $HOSTNUM in 
        1)
            USERNAME="User"
            PORT="22"
            ;;
        2)
            USERNAME="dzc"
            PORT="4000"
            ;;
        3)
            USERNAME="dzc"
            PORT="2000"
            ;;
        4)
            USERNAME="pi"
            PORT="6000"
            ;;
        *)  
            ;;
    esac
    proxychains ssh -p $PORT ${USERNAME}@myhost
    read -p "Does continue ?(y,n):" RESPONSE
    if [ $RESPONSE = "n" ] ; then
        break
    fi
done
echo "done"
exit 0

