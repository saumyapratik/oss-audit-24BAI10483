#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: S P | Course: Open Source Software
# This script checks if a software package is installed and prints a brief description.

PACKAGE="python3"   # Package to check

# --- Check if the package is installed ---
if command -v $PACKAGE >/dev/null 2>&1; then
    echo "$PACKAGE is installed."
    $PACKAGE --version   # Show version
else
    echo "$PACKAGE is NOT installed."
fi

# --- Case statement: short description for package ---
case $PACKAGE in
    python3)
        echo "Python: the language powering automation, AI, and web development."
        ;;
    git)
        echo "Git: version control for collaborative development."
        ;;
    vlc)
        echo "VLC: open-source media player for all formats."
        ;;
    firefox)
        echo "Firefox: browser supporting the open web."
        ;;
esac
