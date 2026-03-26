#!/bin/bash
# Script 1: System Identity Report
# Author: [Aryan Kumar Rai]
# Concepts used: variables, command substitution $(), echo, formatting

STUDENT_NAME="Aryan Kumar Rai"
SOFTWARE_CHOICE="MySQL"

KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
DISTRO=$(cat /etc/os-release | grep "^PRETTY_NAME" | cut -d= -f2 | tr -d '"')
CURRENT_DATE=$(date '+%A, %d %B %Y %H:%M:%S')

echo "======================================"
echo " Open Source Audit | $STUDENT_NAME"
echo " Software Focus: $SOFTWARE_CHOICE"
echo "======================================"
echo "Distribution : $DISTRO"
echo "Kernel       : $KERNEL"
echo "User         : $USER_NAME"
echo "Home Dir     : $HOME"
echo "Uptime       : $UPTIME"
echo "Date         : $CURRENT_DATE"
echo "--------------------------------------"
echo "License Note: This operating system is powered by the Linux kernel,"
echo "which is released under the GNU General Public License (GPL) v2."
echo "======================================"