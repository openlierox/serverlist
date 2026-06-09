#!/bin/bash

LINE=3
[ -n "$1" ] && LINE="$1"

PUBLIC_IP="`curl https://ipinfo.io/ip`"
[ -n "$PUBLIC_IP" ] || exit

echo "My public IP: $PUBLIC_IP"

git pull

sed -i "${LINE}s/.*/$PUBLIC_IP/g" udpmasterservers.txt

git push
