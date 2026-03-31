#!/bin/bash
# Get inputs
LOGFILE=$1
KEYWORD=${2:-"error"}
COUNT=0
# Check if file exists
if [ ! -f "$LOGFILE" ]; then
    echo "Error: File not found."
    exit 1
fi

# Check if file is empty (retry once)
if [ ! -s "$LOGFILE" ]; then
    echo "File is empty. Trying again..."
    sleep 2
fi
# Read file line by line
while IFS= read -r LINE
do
    if echo "$LINE" | grep -iq "$KEYWORD"
    then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"
# Output result
echo "Keyword '$KEYWORD' found $COUNT times"
# Show last 5 matching lines
echo "Last 5 matches:"
grep -i "$KEYWORD" "$LOGFILE" | tail -5