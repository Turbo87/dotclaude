#!/bin/bash

# Read JSON input from stdin
json_input=$(cat)

# Extract information
file_path=$(echo "$json_input" | jq -r '.tool_response.filePath // ""')

# Run formatting tools based on file type
if [[ "$file_path" =~ \.rs$ ]]; then
    echo "Rust file modified, running cargo fmt --all..."
    cargo fmt --all || true
fi
