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

cat << "EOF"

······························
:░█▀▀░█░█░█▀▀░█▀▀░█▀▀░█▀▀░█▀▀:
:░▀▀█░█░█░█░░░█░░░█▀▀░▀▀█░▀▀█:
:░▀▀▀░▀▀▀░▀▀▀░▀▀▀░▀▀▀░▀▀▀░▀▀▀:
······························

EOF
echo "0. srtodo --help for helper menu"
echo "1. Ensure $INSTALL_DIR is in your PATH."
echo "2. Run configuration:"
echo "   srtodo --config --path /path/to/your/todo.md"
echo "-------- THANK YOU by-----------------------"
cat << "EOF"

   _     _      _     _      _     _      _     _      _     _   
  (c).-.(c)    (c).-.(c)    (c).-.(c)    (c).-.(c)    (c).-.(c)  
   / ._. \      / ._. \      / ._. \      / ._. \      / ._. \   
 __\( Y )/__  __\( Y )/__  __\( Y )/__  __\( Y )/__  __\( Y )/__ 
(_.-/'-'\-._)(_.-/'-'\-._)(_.-/'-'\-._)(_.-/'-'\-._)(_.-/'-'\-._)
   || S ||      || R ||      || L ||      || I ||      || U ||   
 _.' `-' '._  _.' `-' '._  _.' `-' '._  _.' `-' '._  _.' `-' '._ 
(.-./`-`\.-.)(.-./`-`\.-.)(.-./`-'\.-.)(.-./`-'\.-.)(.-./`-'\.-.)
 `-'     `-'  `-'     `-'  `-'     `-'  `-'     `-'  `-'     `-' 

EOF
