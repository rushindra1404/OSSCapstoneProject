#!/bin/bash
# Ask for package name
read -p "Enter package name: " PACKAGE
# Check if installed
if dpkg -l | grep -w $PACKAGE > /dev/null
then
    echo "$PACKAGE is installed"
    dpkg -s $PACKAGE | grep -E "Version|Description"
else
    echo "$PACKAGE is NOT installed"
fi
# Case statement for description
case $PACKAGE in
    git) echo "Git: version control system" ;;
    apache2) echo "Apache: web server" ;;
    mysql) echo "MySQL: database system" ;;
    vlc) echo "VLC: media player" ;;
    *) echo "No info available" ;;
esac