#!/bin/sh
apt update
apt upgrade -y

apt install -y git
pushd /root
git clone https://github.com/feilongfl/vps-v2ray-init-script.git
pushd vps-v2ray-init-script
./vps.sh
popd
popd

