#!/bin/bash
#This shell script is used to update and upgrade Linux release system

while true
do
	echo "1)Debian/GNU APT"
	echo "2)ArchLinux/GNU PACMAN"
	read -p "Please select a release:" NUM
	echo "Selected $NUM)"
	case $NUM in
		1)
			proxychains apt-get update -y ;
			proxychains apt-get upgrade -y ;
			echo "done"
			;;
		2)
	                yes| proxychains pacman -Suu ;
	                echo "done"
			;;
		esac
    read -p "Does continue?:(y,n) " RESPONSE
            echo "$RESPONSE"
    if [ $RESPONSE == "n" ]; then
    	break
    fi
echo "done"
done
exit 0
			
