#!/bin/bash

while true; do
clear
echo "--------------------SYSTEM--------------------"
echo
echo "Time: $(date)"
echo "Uptime: $(uptime -p)"
echo
echo "Memory:"
free -h
echo
echo "Disk:"
df -h /
echo
echo "CPU:"
mpstat 1 1 | grep "Average"
echo "Top 5 CPU intensive processes:"
ps -eo pid,comm,%cpu --sort=-%cpu | head -n 6
echo
echo "Active Users:"
who
echo
echo "Network:"
netstat -i
sleep 5
done
