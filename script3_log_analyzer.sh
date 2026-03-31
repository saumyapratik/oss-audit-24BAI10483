#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: S P | Course: Open Source Software
# This script reports disk usage and permissions of important system directories.

# --- Directories to audit ---
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")  

echo "Directory Audit Report"
echo "----------------------"

# --- Loop through directories ---
for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        PERMS=$(ls -ld "$DIR" | awk '{print $1, $3, $4}')  # Permissions and owner/group
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)        # Directory size
        echo "$DIR => Permissions: $PERMS | Size: $SIZE"
    else
        echo "$DIR does not exist on this system"
    fi
done

# Optional: check chosen software's config directory
SOFTWARE_DIR="/usr/local/bin/python3"  # Example path
if [ -e "$SOFTWARE_DIR" ]; then
    echo "Software directory $SOFTWARE_DIR exists."
    ls -ld "$SOFTWARE_DIR"   # Show permissions
fi
