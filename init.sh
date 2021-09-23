#!/bin/bash

echo "######CentOS系统初始化v0.1#######"
echo "[step1]:升级源...."
cd ~
yum makecache
yum update

echo "[step2]:安装epel库......."
yum install epel-release

echo "[step3]:安装bash和vim......."
yum install bash-completion vim

echo "[step4]:安装make,gcc,g++......."
yum install make gcc gcc-c++

echo "[step5]:安装perl,python,python3......"
yum install perl python python3

echo "[step6]:创建新用户........"
echo "是否创建新用户：(y/n)"
read y_n
until [ $y_n ]
do 
	read y_n
done

if [ `echo $y_n | grep "^[y|Y]"` ]; then
	echo "您想创建的用户名："
	read username
	until [ $username ]
	do
		read username
	done
	useradd -d /home/$username -m $username
	echo "为新建用户赋予sudo权限"
	chmod 644 /etc/sudoers
	text="$username	ALL=(ALL)	ALL"
	sed -i "100a ${text}" /etc/sudoers 
	passwd $username
	echo "$username用户创建成功！"
fi 


echo "系统初始化全部完成,enjoy yourself!!"
