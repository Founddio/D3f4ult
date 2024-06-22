#!/data/data/com.termux/files/usr/bin/bash
# Password Protection Script

echo -e "\e[1;31m" # Set text color to red
echo "########################################"
echo "#                                      #"
echo "#             Enter Password            #"
echo "#                                      #"
echo "########################################"
echo -e "\e[0m" # Reset text color

read -sp "Password: " password

# Check for the password
if [ "$password" == "d3f4ult" ]; then
    echo -e "\e[1;32m" # Set text color to green
    echo "\nWelcome d3f4ult"
    echo -e "\e[0m" # Reset text color

    # Start Kali Linux via start-kali.sh
    echo "Starting Kali Linux..."
    ~/start-kali.sh
else
    echo -e "\e[1;31m" # Set text color to red
    echo "\nIncorrect password."
    echo -e "\e[0m" # Reset text color
    exit 1
fi
