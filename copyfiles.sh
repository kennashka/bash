#!/bin/bash

########################################################################################################
#Author: Kennashka DeSilva
#mail@kennashka.com
#2020
########################################################################################################


sudo yum update -y
echo "Type desired folder name for your keypair, followed by [ENTER]:"
read pemkey
touch "$pemkey"
cp *.pem $pemkey

echo "Type desired folder name followed by [ENTER]:"

read foldername
cd "$foldername"
touch sample.txt
exit

ssh -i $pemkey ec2-user@ec2-3-19-14-219.us-east-2.compute.amazonaws.com
sudo yum update -y
mkdir backup
cd ~

rsync -avze "ssh -i $pemkey ec2-user@ec2-3-19-14-219.us-east-2.compute.amazonaws.com" /home/ec2-user/ ec2-user@ec2-3-135-236-37.us-east-2.compute.amazonaws.com
:/home/ec2-user/

