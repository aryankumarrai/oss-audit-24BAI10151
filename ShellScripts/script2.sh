#!/bin/bash
# Script 2: FOSS Package Inspector
# Concepts used: if-then-else, package managers (dpkg), case statements, pipes, grep

PACKAGE=${1:-"mysql-server"}

echo "Checking system for package: $PACKAGE..."
echo "----------------------------------------"

if dpkg -l | grep -q "^ii  $PACKAGE "; then
    echo "STATUS: $PACKAGE is installed."
    echo "--- Package Details ---"
    dpkg -s $PACKAGE | grep -E 'Version|Status|Architecture'
else
    echo "STATUS: $PACKAGE is NOT installed on this system."
    exit 1
fi

echo "----------------------------------------"

case $PACKAGE in
    mysql-server|mysql) 
        echo "Philosophy Note: MySQL - The relational database that powered the early web." 
        ;;
    apache2|httpd) 
        echo "Philosophy Note: Apache - The web server that built the open internet." 
        ;;
    git) 
        echo "Philosophy Note: Git - Decentralized collaboration built from frustration." 
        ;;
    python3) 
        echo "Philosophy Note: Python - A language shaped entirely by community consensus." 
        ;;
    *) 
        echo "Philosophy Note: An open-source package contributing to modern infrastructure." 
        ;;
esac