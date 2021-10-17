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

echo "[step6]:安装Golang......"
cd /tmp
wget https://dl.google.com/go/go1.17.1.linux-amd64.tar.gz
tar -zxvf go1.17.1.linux-amd64.tar.gz
mv go /usr/local/
cd /usr/local/
chmod -R 755 go
echo "export GOROOT=/usr/local/go" >> /etc/profile
echo "export PATH=$PATH:$GOROOT/bin" >> /etc/profile
source /etc/profile

echo "[step7]:用户设置........"
cd ~
wget https://raw.githubusercontent.com/xhy-code/centos_shell_scripts/master/user_config.sh
bash user_config.sh

echo "系统初始化全部完成,enjoy yourself!!"
