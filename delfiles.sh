#!/bin/bash
# This script is used to delete selected in Linux

red='\033[0;31m'
green='\033[0;32m'
yellow='\033[0;33m'
plain='\033[0m'

while true
do
read -p "Please input file name:" filename
echo "filename = ${filename}"
echo

read -p "Please input file size:" filesize
echo "filesize = ${filesize}"
echo

find . -size -${filesize} -type f -iname ${filename} -delete

read -p "Does continue ?(y,n)" confirm
echo "confirm = ${confirm}"
echo
if [ $confirm = "n" ];then
	break
fi

done

exit 0 
