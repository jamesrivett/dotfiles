#!/bin/bash

# Resolve script directory (src: https://stackoverflow.com/a/246128)
SOURCE_PATH="${BASH_SOURCE[0]}"
# Resolve symlinks recursively
while [ -L "$SOURCE_PATH" ]; do
# Get symlink directory
SYMLINK_DIR="$( cd -P "$( dirname "$SOURCE_PATH" )" >/dev/null 2>&1 && pwd )"
# Resolve symlink target (relative or absolute)
SOURCE_PATH="$(readlink "$SOURCE_PATH")"
# Check if candidate path is relative or absolute
if [[ $SOURCE_PATH != /* ]]; then
	# Candidate path is relative, resolve to full path
	SOURCE_PATH=$SYMLINK_DIR/$SOURCE_PATH
fi
done
# Get final script directory path from fully resolved source path
SCRIPT_DIR="$(cd -P "$( dirname "$SOURCE_PATH" )" >/dev/null 2>&1 && pwd)"
echo "Current Directory (should be dotfiles repo): $SCRIPT_DIR"

$SCRIPT_DIR/

DEBIAN_FRONTEND=noninteractive

# Update Ubuntu Sources
apt-get update

# Install apt packages
apt-get install -y \ 
	tmux curl vim git

# Install Snaps
snap install discord 

# Run the dotfiles installer

