#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: S P | Course: Open Source Software
# This script asks user 3 questions and generates a manifesto text file.

echo "Answer three questions to generate your manifesto."
echo ""

# --- User input ---
read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

# --- Prepare output file ---
DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

# --- Compose manifesto ---
echo "Open Source Manifesto — $DATE" > "$OUTPUT"
echo "-----------------------------------" >> "$OUTPUT"
echo "I use $TOOL every day because it empowers me and others. Freedom means $FREEDOM. I pledge to build $BUILD and share it freely with the community." >> "$OUTPUT"
echo "-----------------------------------" >> "$OUTPUT"

# --- Display confirmation ---
echo "Manifesto saved to $OUTPUT"
cat "$OUTPUT"
