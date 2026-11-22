#!/bin/bash

sudo apt update

# 1. Install Docker
if command -v docker >/dev/null 2>&1; then
    echo "Docker is installed already"
else
    sudo apt install -y docker.io
    sudo systemctl enable --now docker
fi

# 2. Install Docker Compose
if command -v docker compose version >/dev/null 2>&1 || command -v docker-compose >/dev/null 2>&1; then
    echo "Docker Compose is installed already"
else
    sudo apt install -y docker-compose
fi

# 3. Install Python
if command -v python3 >/dev/null 2>&1; then
    echo "Python is installed already"
else
    sudo apt install -y python3 python3-pip
fi

# 4. Install Django
if python3 -m django --version >/dev/null 2>&1; then
    echo "Django is installed already"
else
    sudo apt install -y python3-django || pip3 install django
fi