#!/bin/bash

Author: Dominique, email, uid
#Date:June 2022
##Qa java app deployment
if
 [ $UID -ne 0 ]
then
echo "You need root access to run this!!"
exit 2

fi

## Makr sure javar is installed
echo "installing java, please wait as this will take a while.."    
sleep 2
yum install java-1.8* -y
sleep 2
yum install wget unzip -y
##Download the developer'code
wget --user admin --password school1 http://96.126.114.68:8001/repository/ewr/bio/bio-2/v2/bio-2-v2-bio.jar

## Run the app
java -jar bio-2-v2-bio.jar

echo " Thanks"