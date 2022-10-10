#! /bin/bash
#升级并安装基础包管理工具
apt-get -y update
apt-get -y install nano curl wget bash-completion libevent-*
apt-get -y update && apt-get -y autoremove && apt-get -y autoclean

# 下载编译好的全功能sing-box文件
wget -c https://pan.kodbox.ga/sing-box/singbox.tar.gz
tar -zxf singbox.tar.gz && chmod +x ./singbox && rm singbox.tar.gz

#下载配置文件
wget -c https://github.com/King-stark/singbox/raw/main/config/goorm-server.json -O config.json

#运行
nohup ./singbox run -c config.json >/dev/null 2>&1 &
