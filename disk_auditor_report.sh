#!/bin/bash
# List of directories
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")
echo "Directory Audit Report"
echo "----------------------"
# Loop through directories
for DIR in "${DIRS[@]}"
do
    if [ -d "$DIR" ]; then
        # Get permissions, owner, group
        PERMS=$(ls -ld $DIR | awk '{print $1, $3, $4}')
        
        # Get size
        SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)
        
        echo "$DIR => $PERMS | Size: $SIZE"
    else
        echo "$DIR => Not found"
    fi
done