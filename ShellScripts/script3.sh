#!/bin/bash
# Script 3: Disk and Permission Auditor
# Concepts used: for loops, condition checks, awk, cut, du, ls -ld

DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp" "/etc/mysql" "/var/lib/mysql")

echo "========================================"
echo " Directory Audit Report"
echo "========================================"

for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        PERMS=$(ls -ld "$DIR" | awk '{print $1, $3, $4}')
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
        printf "%-15s => Perms/Owner: %-25s | Size: %s\n" "$DIR" "$PERMS" "$SIZE"
    else
        echo "$DIR => DOES NOT EXIST ON THIS SYSTEM"
    fi
done
echo "========================================"