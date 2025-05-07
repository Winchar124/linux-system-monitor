#!/bin/bash

while true; do
clear
echo "--------------------SYSTEM--------------------"
echo
echo "Time: $(date)"
echo "Uptime: $(uptime -p)"
echo
echo "CPU:"
mpstat 1 1 | grep "Average"
echo
echo "Memory:"
free -h
echo
echo "Disk:"
df -h /
echo
echo "Top 5 CPU intensive processes:"
ps -eo pid,comm,%cpu --sort=-%cpu | head -n 6
echo
sleep 5
done
