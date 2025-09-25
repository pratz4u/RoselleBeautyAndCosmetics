#!/bin/bash

while true
do
    # Add all changes
    git add .

    # Commit with timestamp to avoid conflicts
    git commit -m "Auto-sync: $(date +"%Y-%m-%d %H:%M:%S")" 2>/dev/null

    # Push to GitHub
    git push origin main

    # Wait 60 seconds before checking again
    sleep 60
done
