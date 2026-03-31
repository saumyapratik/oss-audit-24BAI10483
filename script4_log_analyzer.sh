#!/bin/bash
# Script 4: Log File Analyzer
# Author: S P | Course: Open Source Software
# This script counts lines containing a keyword in a log file.

LOGFILE=$1
KEYWORD=${2:-"error"}   # Default keyword: 'error'
COUNT=0

# --- Check if file exists ---
if [ ! -f "$LOGFILE" ]; then
    echo "Error: File $LOGFILE not found."
    exit 1
fi

# --- Read log file line by line ---
while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))   # Increment counter
    fi
done < "$LOGFILE"

# --- Display summary ---
echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"

# Optional: print last 5 matching lines
echo "Last 5 matching lines:"
grep -i "$KEYWORD" "$LOGFILE" | tail -n 5
