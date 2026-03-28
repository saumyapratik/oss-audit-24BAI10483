#!/bin/bash
# Script 2: FOSS Package Inspector

PACKAGE="python3"

# Check if Python is installed
if command -v python3 >/dev/null 2>&1; then
    echo "$PACKAGE is installed."
    python3 --version
else
    echo "$PACKAGE is NOT installed."
fi

# Case statement for package description
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