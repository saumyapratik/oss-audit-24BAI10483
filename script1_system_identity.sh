#!/bin/bash
# Script 1: System Identity Report
# Author: S P | Course: Open Source Software
# This script displays Linux system information in a welcome-style report.

# --- Variables ---
STUDENT_NAME="S P"           # Your name
SOFTWARE_CHOICE="Python"      # Chosen software for audit

# --- System info ---
DISTRO=$(grep PRETTY_NAME /etc/os-release 2>/dev/null | cut -d= -f2 | tr -d '"')  # Linux distribution
KERNEL=$(uname -r)        # Kernel version
USER_NAME=$(whoami)       # Currently logged-in user
HOME_DIR=$HOME            # User's home directory
UPTIME=$(uptime -p 2>/dev/null) # System uptime
CURRENT_DATE=$(date)      # Current date & time
LICENSE="GNU General Public License (GPL)"  # License of OS

# --- Display Report ---
echo "=============================================="
echo "   Open Source Audit — $STUDENT_NAME"
echo "=============================================="
echo "Software : $SOFTWARE_CHOICE"
echo "Distro   : $DISTRO"
echo "Kernel   : $KERNEL"
echo "User     : $USER_NAME"
echo "Home Dir : $HOME_DIR"
echo "Uptime   : $UPTIME"
echo "Date     : $CURRENT_DATE"
echo "License  : $LICENSE"
echo "=============================================="
