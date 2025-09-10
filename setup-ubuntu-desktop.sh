#!/bin/bash

DEBIAN_FRONTEND=noninteractive

# Update Ubuntu Sources
sudo apt-get update

# Install apt packages
sudo apt-get install -y \ 
	tmux curl vim

# Install Snaps
sudo snap install discord 

# Copy some configs from dotfiles repo
