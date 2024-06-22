#!/data/data/com.termux/files/usr/bin/bash
# Install Script

# Move password script to Termux properties
cp ~/d3f4ult/password.sh ~/.termux/termux.properties

# Make the script executable
chmod +x ~/.termux/termux.properties

# Ensure the start-kali.sh script is executable
chmod +x ~/start-kali.sh

# Add sourcing to .bashrc if not already present
if ! grep -q "source ~/.termux/termux.properties" ~/.bashrc; then
  echo "source ~/.termux/termux.properties" >> ~/.bashrc
fi

echo "Installation complete. Restart Termux to see the changes."
