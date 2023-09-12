#!/usr/bin/env bash

# 设置各变量
UUID='cad7a769-0bf7-43e6-a551-5c51c5263276'
VMESS_WSPATH='/vmess'
VLESS_WSPATH='/vless'
TROJAN_WSPATH='/trojan'
SS_WSPATH='/shadowsocks'
NEZHA_SERVER="tz.lumstu.link"
NEZHA_PORT=5555
NEZHA_KEY="e9xLvcmLfXaKppmTLT"



# 运行客户端
run() {
  [ -e nezha-agent ] && chmod +x nezha-agent && ./nezha-agent -s \${NEZHA_SERVER}:\${NEZHA_PORT} -p \${NEZHA_KEY}
}


run
wait
EOF
}

generate_config
generate_nezha
[ -e nezha.sh ] && bash nezha.sh 2>&1 &
wait
