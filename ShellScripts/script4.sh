#!/bin/bash
# Script 4: Log File Analyzer
# Concepts used: while-read loop, counter variables, if-then, command-line args, tail

LOGFILE=$1
KEYWORD=${2:-"error"}
COUNT=0

while [ ! -s "$LOGFILE" ]; do
    echo "Error: File $LOGFILE not found or is empty."
    read -p "Enter a valid log file path (or type 'exit' to quit): " LOGFILE
    if [ "$LOGFILE" == "exit" ]; then
        exit 1
    fi
done

echo "Analyzing $LOGFILE for keyword: '$KEYWORD'..."

while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo "----------------------------------------"
echo "RESULT: Keyword '$KEYWORD' found $COUNT times."
echo "----------------------------------------"

if [ $COUNT -gt 0 ]; then
    echo "--- Last 5 matching lines ---"
    grep -i "$KEYWORD" "$LOGFILE" | tail -n 5
fi