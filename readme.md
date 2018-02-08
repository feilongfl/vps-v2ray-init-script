# vps 快速部署脚本

## 部署内容
* 服务器(本脚本部署)  
  * v2ray  
  * kcptun  
  * udp2raw  

* 客户端（请手动配置）  
  * v2ray  
    请参考[v2ray官方网站](www.v2ray.com)。
  * kcptun  
    ```
    {
      "localaddr": ":20001",
      "remoteaddr": "127.0.0.1:20011",
      "crypt": "none",
      "mode": "normal",
      "mtu": 1200,
      "nocomp": true,
      "key": "feilong"
    }
    ```
  * udp2raw  
    ```
    # Basically this file is the equivalent to splitting the command line options into multiple lines
    # Each line should contain an option

    # This is client
    -c
    # Or use -s if you use it on server side
    # Define local address
    -l 127.0.0.1:20011
    # Define remote address
    -r 123.45.67.89:20021
    # -a
    # Password
    -k feilong
    # Mode
    --raw-mode faketcp
    # Log Level
    --log-level 4
    --cipher-mode xor
    --auth-mode none
    ```

## 数据传输流程

> vps-server -> v2ray(server) -> kcptun(server) -> udp2raw(server) -> gfw -> udp2raw(client) -> kcptun(client) -> v2ray(client) -> socks5
