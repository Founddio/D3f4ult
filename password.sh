#!/data/data/com.termux/files/usr/bin/bash
# Password Protection Script with Colored Anonymous logo

# Define the colored ASCII art of the Anonymous logo using figlet or toilet
logo=$(cat << "EOF"
\e[1;36m
    _____  _              _____ _     _             
   / ____ \| |            / ____| |   (_)            
  | (___  | |_   _  __ _| (___ | |__  _ _ __   __ _ 
   \___ \ | | | | |/ _` |\___ \| '_ \| | '_ \ / _` |
   ____) || | |_| | (_| |____) | | | | | | | | (_| |
  |_____/ |_|\__,_|\__, |_____/|_| |_|_|_| |_|\__, |
                     __/ |                       __/ |
                    |___/                       |___/ 
EOF
)

echo -e "\e[1;31m" # Set text color to red
echo "########################################"
echo -e "$logo" # Display the colored ASCII art logo
echo "#                                      #"
echo "#             Enter Password            #"
echo "#                                      #"
echo "########################################"
echo -e "\e[0m" # Reset text color

read -sp "Password: " password

# Replace 'd3f4ult' with your actual password
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
