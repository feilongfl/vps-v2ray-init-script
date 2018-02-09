#!/bin/sh
udp2raw-server -s -l 0.0.0.0:20021 -r 127.0.0.1:20011 -a -k password --raw-mode faketcp --cipher-mode xor --auth-mode none

