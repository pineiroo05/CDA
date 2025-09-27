#!/bin/bash

clear

while true; do
	uptime | awk -F 'load average: ' '{print $2}'
	load_average=$(uptime | awk -F 'load average: ' '{print $2}' | awk -F ', ' '{print $3}')
	if [ "$load_average" -ge 2 ]; then
		echo "$(date): -Load average por encima de 2-"
	else
		echo "$(date): -Load average correcto-"
	fi
	sleep 60
done
