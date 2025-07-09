#!/bin/bash

# Update system
sudo apt update -y

# Install Python and pip
sudo apt install -y python3 python3-pip

# Install Git
sudo apt install -y git

# Install Docker
sudo apt install -y docker.io
sudo systemctl enable docker
sudo usermod -aG docker vagrant

# Install Docker Compose
sudo apt install -y docker-compose

# Cleanup
sudo apt autoremove -y

