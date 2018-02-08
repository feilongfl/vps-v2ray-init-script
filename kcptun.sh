#!/bin/sh
kcptun-server -t 127.0.0.1:20001 -l :20011 -mode normal --mtu 1200 --key P@ssw0rd --nocomp --crypt none

