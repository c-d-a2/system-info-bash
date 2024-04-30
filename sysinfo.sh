#!/bin/bash

# assign the output of date to date variable
date=$(date -Iseconds )

get_profile()
{    
    hostnamectl | grep -v -E -i 'id|hardware|chasis|icon' && echo "          Uptime: $(uptime -p)"
}

file_sys()
{
    df -h
}

net_conf()
{
    ip addr
}

meminf()
{
    free -t 
}

cpuinf()
{
    lscpu | head
}

error()
{
    grep -i "error" /var/log/syslog | tail -n5 
}

# display information in a readable manner
system_info(){
echo -e "
SYSTEM INFORMATION REPORT
----------------------------------------------------------------------------------------------------
$(get_profile)
----------------------------------------------------------------------------------------------------
CPU: 
\n$(cpuinf)
----------------------------------------------------------------------------------------------------
Memory: 
\n$(meminf)
----------------------------------------------------------------------------------------------------
Network: 
\n$(net_conf)
----------------------------------------------------------------------------------------------------
FileSystem: 
\n$(file_sys)
----------------------------------------------------------------------------------------------------
Recent Errors: 
\n$(error) "
}
#execute system_info function and output the contents to a timestamped textfile.
system_info > "system_info_$date.txt"
