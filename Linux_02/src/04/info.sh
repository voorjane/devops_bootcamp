#!/bin/bash

echo -e "${COLOR1}HOSTNAME${DEFAULT} = ${COLOR2}$HOSTNAME${DEFAULT}"
echo -e "${COLOR1}TIMEZONE${DEFAULT} = ${COLOR2}$(timedatectl | grep "Time zone" | awk '{print $3, $4, $5}')${DEFAULT}"
echo -e "${COLOR1}USER${DEFAULT} = ${COLOR2}$(whoami)${DEFAULT}"
echo -e "${COLOR1}OS${DEFAULT} = ${COLOR2}$(hostnamectl | grep "Operating System" | awk '{print $3, $4, $5}')${DEFAULT}"
echo -e "${COLOR1}DATE${DEFAULT} = ${COLOR2}$(date | awk '{print $3,$2,$6,$4}')${DEFAULT}"
echo -e "${COLOR1}UPTIME${DEFAULT} = ${COLOR2}$(uptime -p | awk '{print $2, $3, $4, $5}')${DEFAULT}"
echo -e "${COLOR1}UPTIME_SEC${DEFAULT} = ${COLOR2}$(cat /proc/uptime | awk '{print $1}') seconds${DEFAULT}"
echo -e "${COLOR1}IP${DEFAULT} = ${COLOR2}$(ifconfig | grep "inet" | awk '{print $2;exit}')${DEFAULT}"
echo -e "${COLOR1}MASK${DEFAULT} = ${COLOR2}$(ifconfig | grep "inet" | awk '{print $4;exit}')${DEFAULT}"
echo -e "${COLOR1}GATEWAY${DEFAULT} = ${COLOR2}$(ip route | grep "default" | awk '{print $3;exit}')${DEFAULT}"
echo -e "${COLOR1}RAM_TOTAL${DEFAULT} = ${COLOR2}$(free -m | grep "Mem" | awk '{printf("%.3f\n", $2 / 1024)}') GB${DEFAULT}"
echo -e "${COLOR1}RAM_USED${DEFAULT} = ${COLOR2}$(free -m | grep "Mem" | awk '{printf("%.3f\n", $3 / 1024)}') GB${DEFAULT}"
echo -e "${COLOR1}RAM_FREE${DEFAULT} = ${COLOR2}$(free -m | grep "Mem" | awk '{printf("%.3f\n", $4 / 1024)}') GB${DEFAULT}"
echo -e "${COLOR1}SPACE_ROOT${DEFAULT} = ${COLOR2}$(df / | grep "/" | awk '{printf("%.2f\n", $2 / 1024)}') MB${DEFAULT}"
echo -e "${COLOR1}SPACE_ROOT_USED${DEFAULT} = ${COLOR2}$(df / | grep "/" | awk '{printf("%.2f\n", $3 / 1024)}') MB${DEFAULT}"
echo -e "${COLOR1}SPACE_ROOT_FREE${DEFAULT} = ${COLOR2}$(df / | grep "/" | awk '{printf("%.2f\n", $4 / 1024)}') MB${DEFAULT}"
echo
