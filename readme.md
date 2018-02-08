# vps 快速部署脚本

## 部署内容
* 服务器(本脚本部署)
  * v2ray
  * kcptun
  * udp2raw

* 客户端（请手动配置）
  * v2ray
  * kcptun
  * udp2raw

## 数据传输流程

> vps-server -> v2ray(server) -> kcptun(server) -> udp2raw(server) -> gfw -> udp2raw(client) -> kcptun(client) -> v2ray(client) -> socks5
