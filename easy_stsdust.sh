#!/bin/bash
# 禁用firewalld并启用iptables
yum install -y iptables-services
yum install -y wget
systemctl stop firewalld
systemctl disable firewalld
systemctl start iptables
systemctl enable iptables
echo "net.ipv4.ip_forward=1" >> /etc/sysctl.conf
echo 1 > /proc/sys/net/ipv4/ip_forward
sysctl -p

# 清空iptables默认规则并保存
iptables -F
iptables -t nat -F
iptables -t raw -F
iptables -t mangle -F
service iptables save

# 关闭SELinux
setenforce 0
# 永久关闭SELinux
sed -i 's/SELINUX=enforcing/SELINUX=disabled/' /etc/sysconfig/selinux

# 修改hosts文件以使github容易访问
echo "199.232.68.133 raw.githubusercontent.com" >> /etc/hosts
echo "140.82.112.4 github.com" >> /etc/hosts

# 下载一键脚本并 执行
wget -O natcfg.sh --no-check-certificate https://raw.githubusercontent.com/stsdust/EasySTSDUST/master/natcfg_modified.sh && chmod +x natcfg.sh && bash natcfg.sh