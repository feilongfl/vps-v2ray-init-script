#!/bin/bash

# update repo
apt update
apt upgrade -y

# install base
apt install -y tmux
apt install -y fish

# change default shell
chsh -s /usr/bin/fish

# install extra
apt install -y vim
apt install -y curl
apt install -y wget
apt install -y aria2
apt install -y nload
apt install -y htop
apt install -y git
apt install -y mosh
apt install -y jq

# v2ray
bash <(curl -L -s https://install.direct/go.sh)

# kcptun
mkdir -p /tmp/install-sys/kcptun
pushd /tmp/install-sys/kcptun
wget -O- https://github.com/xtaci/kcptun/releases/download/v20171201/kcptun-linux-amd64-20171201.tar.gz | tar -zxv
mv server_linux_amd64 /usr/bin/kcptun-server
popd

# udp2raw
mkdir -p /tmp/install-sys/udp2raw
pushd /tmp/install-sys/udp2raw
wget -O- https://github.com/wangyu-/udp2raw-tunnel/releases/download/20180111.1/udp2raw_binaries.tar.gz | tar -zxv
mv udp2raw_amd64 /usr/bin/udp2raw-server
popd

./start.sh
