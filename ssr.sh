#!/bin/bash
yum update -y
yum install vim git -y
git clone -b manyuser https://github.com/ToyoDAdoubi/shadowsocksr.git

# 开启防火墙端口
firewall-cmd --add-port=8888/tcp --permanent
firewall-cmd --add-port=666/tcp --permanent

#显示已经开启的端口
firewall-cmd --zone=public --list-ports
