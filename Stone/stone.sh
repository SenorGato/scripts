#!/bin/bash

IP=$(curl -s https://ipinfo.io/ip)
LOC_QUERY=$(curl http://ip-api.com/csv/$IP)
IFS=',' read -ra ADDR <<< "$LOC_QUERY"
LAT=${ADDR[7]}
LONG=${ADDR[8]}
curl -s 'https://api.sunrise-sunset.org/json?lat=$LAT&lng=$LONG&date=today' > ~/scripts/Stone/stone.data 
