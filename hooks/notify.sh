#!/bin/bash

# Read JSON input from stdin
json_input=$(cat)

# Extract information
title=$(echo "$json_input" | jq -r '.title // "Claude Code"')
message=$(echo "$json_input" | jq -r '.message // "Task completed"')

# Send notification
pnpx node-notifier-cli@2 \
    --title "$title" \
    --message "$message" \
    --sound "Tink"