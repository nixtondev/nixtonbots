#!/bin/bash

# This script is not ready yet!

# Installer variables test
APP="MyApp"
INSTALL_DIR="/opt/myapp"

# Welcome install message
echo "Welcome to the $APP Installer!"

# For user input
read -p "Please enter your name: " name

# Installation steps
echo "Installing $APP."

echo "Copying files..."

cp -R ./app $INSTALL_DIR

echo "Setting permissions."

chmod +x $INSTALL_DIR/*.sh

echo "Installing dependencies..."

apt-get install -y depen1 depen2

# Completion message
echo "$APP installation completed successfully!"

# Exit the script
exit 0
