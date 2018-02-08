#!/bin/sh
export UUID=$(cat /proc/sys/kernel/random/uuid)
cat ./config.json | jq '.inbound.settings.clients[0].id="'$UUID'"' | tee /etc/v2ray/config.json
echo your UUID is: $UUID

/usr/bin/v2ray/v2ray -config /etc/v2ray/config.json
