#!/bin/bash

#assign output of commands to variables
host=$(hostname)
op_sys=$(awk -F = '{print $2}' /etc/os-release | head -n1)
uptime=$(uptime | awk '{print $1,$3}')
kernelv=$(uname -r)
cpuinf=$(lscpu | head)
fileinf=$(df -h)
netinf=$(ip addr)
meminf=$(free -t)
error=$(grep -i "error" /var/log/syslog | tail -n5 )
date=$(date -Iseconds )

#create a text file with the desired information
echo -e "
SYSTEM INFORMATION
----------------------------------------------------------------------------------------------------
Hostname: $host 
Operating System: $op_sys
Uptime: $uptime
Kernel Version: $kernelv
----------------------------------------------------------------------------------------------------
CPU: 
\n$cpuinf
----------------------------------------------------------------------------------------------------
Memory: 
\n$meminf
----------------------------------------------------------------------------------------------------
Network: 
\n$netinf
----------------------------------------------------------------------------------------------------
FileSystem: 
\n$fileinf
----------------------------------------------------------------------------------------------------
Recent Errors: 
\n$error" > system_info_$date.txt
