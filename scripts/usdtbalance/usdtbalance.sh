#!/bin/bash

address=$1
blockchain=$2
[ $# -lt 2 ] && echo "Provide USDT address and blockchain" && exit;
value=`curl --silent 'https://usdtchecker.org/search' \
  -H 'accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7' \
  -H 'content-type: application/x-www-form-urlencoded' \
  -H 'origin: https://usdtchecker.org' \
  -H 'referer: https://usdtchecker.org/' \
  --data-raw "address=$address&blockchain=$blockchain" | sed -n "41p" | tr -d ' ' | cut -c 5- | cut -c -6`

echo 󰖄 USDT\($blockchain\) $value
