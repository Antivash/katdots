#!/bin/bash

# Check if the repository URL is provided as an argument
if [ -z "$1" ]; then
  echo "Usage: $0 <repository_url>"
  exit 1
fi

# Clone the repository
git clone "$1"

# Extract the repository name from the URL and change into the directory
repo_name=$(basename "$1" .git)
cd "$repo_name" || { echo "Failed to change directory to $repo_name"; exit 1; }

# Optional: Confirm the current directory
echo "Successfully cloned and changed directory to $(pwd)"