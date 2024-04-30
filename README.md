# System Information Script

## Overview
This Bash script gathers detailed system information and outputs it into a timestamped text file. It is designed for Linux systems and utilizes a variety of system utilities to collect data about the system's hardware, operating system, and network configuration.

## Features
The script collects the following detailed information:
- **Hostname:** The network name of the system.
- **Operating System:** The operating system running on the system.
- **Uptime:** How long the system has been running since the last boot.
- **Kernel Version:** The version of the Linux kernel currently in use.
- **CPU Details:** Information about the system's CPU, including architecture.
- **Memory Usage:** Total and used memory, including swap.
- **Network Interfaces:** Information about each network interface.
- **File System Usage:** Disk space usage for mounted file systems.
- **Recent System Errors:** The last few error messages from the system log.


## Prerequisites
Ensure the following tools are installed and accessible on your Linux distribution:
- `hostname`: Fetches the system's network name.
- `awk`: Processes text data.
- `uname`: Retrieves the kernel version.
- `lscpu`: Provides detailed CPU information.
- `df`: Reports file system disk space usage.
- `ip`: Displays network interfaces information.
- `free`: Checks memory usage.
- `grep`: Searches through text.

The script might require root permissions to access all data, especially system logs like `/var/log/syslog`.

## Usage
Follow these steps to run the script:

1. **Make the script executable:**
   ```bash
   chmod +x system_info.sh
2. **Run the Script:**
   ```bash
     ./system_info.sh
3. **Read File**
   ```bash
     cat (file)
## Output
The script creates a timestamped file (
system_info_timestamp.txt) with all of the information above.
