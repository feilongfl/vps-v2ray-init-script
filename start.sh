#!/bin/sh
tmux new "htop" ';' split -h "sh ./v2ray.sh" ';' split -l 20 "sh ./kcptun.sh"';' split -l 10 "sh ./udp2raw.sh"';' split -t 0 "nload"
