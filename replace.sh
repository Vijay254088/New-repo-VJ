#!/bin/bash

# File to process
file="yourfile.txt"

# Process the file line by line and apply the replacement logic
awk 'NR<5 {print; next} /welcome/ {gsub(/give/, "learning")} {print}' "$file" > temp.txt

# Overwrite the original file with the changes
mv temp.txt "$file"

echo "Replacement done from the 5th line onwards in lines containing 'welcome'."

