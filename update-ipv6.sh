#!/bin/bash

LINE=4
[ -n "$1" ] && LINE="$1"

PUBLIC_IP="`curl -6 https://ipv6.icanhazip.com`"
[ -n "$PUBLIC_IP" ] || exit

echo "My public IP: $PUBLIC_IP"

git pull

sed -i "${LINE}s/.*/[$PUBLIC_IP]:23450/g" udpmasterservers.txt

git commit -a -m "Updated masterserver $LINE"

git push
