#!/bin/bash

echo "###########远程桌面一键部署v1.0#############"
echo "是否是首次运行本脚本：(y/n)"
read y_n
until [ $y_n ]
do 
	read y_n
done

if [ `echo $y_n | grep "^[y|Y]"` ]
then
	echo "首次运行，从step1开始。"
	echo "[step1]:安装GNOME桌面......."
	yum -y groups install "GNOME Desktop"
	echo "exec gnome-session" >> ~/.xinitrc

	echo "[step2]:安装xrdp......"
	yum -y install xrdp

	echo "[step3]:安装tigervnc-server......."
	yum -y install tigervnc-server

else
	echo "非首次运行，从step4开始。“
fi

echo "[step4]:永久开启xrdp........"
systemctl start xrdp
 
echo "[step5]:临时关闭selinux........"
setenforce 0

echo "[step6]:临时关闭防火墙........"
systemctl stop firewalld.service

echo "远程桌面部署完成，尝试链接吧！！"
