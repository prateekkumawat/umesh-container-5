#!/bin/bash 
URL="http://localhost"
OUTPUT="response.log"

while true; do
    echo "===== $(date) =====" >> "$OUTPUT"
    curl -I "$URL" >> "$OUTPUT"
    echo -e "\n" >> "$OUTPUT"
    sleep 5
done