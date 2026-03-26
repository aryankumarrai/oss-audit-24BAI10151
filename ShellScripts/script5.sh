#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Concepts used: read, string concatenation, redirection (>, >>), date

echo "=========================================="
echo " The Open Source Manifesto Generator"
echo "=========================================="
echo "Please answer the following three questions:"

read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

CURRENT_DATE=$(date '+%d %B %Y')
OUTPUT_FILE="manifesto_$(whoami).txt"

echo "Generating your manifesto..."

echo "Open Source Manifesto" > "$OUTPUT_FILE"
echo "Generated on: $CURRENT_DATE" >> "$OUTPUT_FILE"
echo "----------------------------------------" >> "$OUTPUT_FILE"
echo "As a developer in the modern tech ecosystem, I rely heavily on foundational tools like $TOOL to build, design, and deploy my architecture." >> "$OUTPUT_FILE"
echo "" >> "$OUTPUT_FILE"
echo "To me, the core philosophy of open-source software represents $FREEDOM. It is the guarantee that the infrastructure we build upon remains transparent and auditable by the community." >> "$OUTPUT_FILE"
echo "" >> "$OUTPUT_FILE"
echo "If I had the resources to contribute back to this ecosystem, I would build a $BUILD. I would release it under a permissive license so that other developers could freely learn from its logic and modify it for their own systems." >> "$OUTPUT_FILE"

echo "Done."
echo "----------------------------------------"
echo "Manifesto saved to: $OUTPUT_FILE"
echo "File Contents:"
echo ""
cat "$OUTPUT_FILE"