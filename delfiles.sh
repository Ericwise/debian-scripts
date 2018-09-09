#!/bin/bash
# This script is used to delete selected files in Linux

red='\033[0;31m'
green='\033[0;32m'
yellow='\033[0;33m'
plain='\033[0m'

while true
do
	echo "1)delete specified size files"
	echo "2)delete empty directory"
    read -p "Please select a operation:" OPERATION
	echo "selected $OPERATION"
	case $OPERATION in
		1)
			read -p "Please input file name:" filename
			echo "filename = ${filename}"
			echo
            read -p "Please input file size:" filesize
            echo "filesize = ${filesize}"
            echo
            find . -size -${filesize} -type f -iname ${filename} -delete
	        echo "done"
			;;
		2)  
			find . -empty -delete
			echo "done"
			;;
	esac
read -p "Does continue ?(y,n)" confirm
echo "confirm = ${confirm}"
echo
if [ $confirm = "n" ];then
	break
fi
done
exit 0 
