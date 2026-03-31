#!/bin/bash
# Script 5: Open Source Manifesto Generator
echo "Answer three questions to generate your manifesto."
echo ""
# Taking user input
read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD
# Getting date
DATE=$(date '+%d %B %Y')
# Output file name
OUTPUT="manifesto_$(whoami).txt"
# Writing manifesto to file
echo "Open Source Manifesto - $DATE" > $OUTPUT
echo "" >> $OUTPUT
echo "I use $TOOL in my daily work, and it shows how powerful open-source can be." >> $OUTPUT
echo "For me, freedom means $FREEDOM, especially in software and technology." >> $OUTPUT
echo "In the future, I would like to build $BUILD and share it openly with others." >> $OUTPUT
echo "I believe knowledge should be shared, not restricted." >> $OUTPUT
# Note: You can create an alias like:
# alias manifesto='./script5.sh'
# Display result
echo ""
echo "Manifesto saved to $OUTPUT"
echo ""
cat $OUTPUT