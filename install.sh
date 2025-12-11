#!/bin/bash

INSTALL_DIR="$HOME/.local/bin"
SCRIPT_NAME="srtodo"

echo "Installing srtodo CLI..."

# Ensure the bin directory exists
mkdir -p "$INSTALL_DIR"

# Copy the script
cp srtodo "$INSTALL_DIR/$SCRIPT_NAME"

# Make it executable
chmod +x "$INSTALL_DIR/$SCRIPT_NAME"

echo "Success!"
echo "1. Ensure $INSTALL_DIR is in your PATH."
echo "2. Run configuration:"
echo "   srtodo --config --path /path/to/your/todo.md"
