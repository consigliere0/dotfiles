#!/bin/bash

# Configuration
wifi_icon_on=" "
wifi_icon_off="睊 "
menu_cmd="rofi -dmenu -i -p \"Wi-Fi\""

# Function to display current Wi-Fi status
show_status() {
    # Check if there is an active Wi-Fi connection
    if nmcli -t -f active,ssid device wifi list | grep -q '^yes'; then
        # If connected, show the "on" icon
        echo "$wifi_icon_on"
    else
        # If not connected, show the "off" icon
        echo "$wifi_icon_off"
    fi
}

# Function to show the rofi menu and handle user input
show_menu() {
    # Get a list of available Wi-Fi networks (SSID only)
    networks=$(nmcli -t -f ssid,signal device wifi list --rescan yes | awk -F':' '{if (seen[$1]++ == 0) print $1}')

    # Add the "Disconnect" option to the list if currently connected
    connected_ssid=$(nmcli -t -f active,ssid device wifi list | grep '^yes' | cut -d ':' -f2)
    if [[ -n "$connected_ssid" ]]; then
        networks="Disconnect\n$networks"
    fi

    # Display the menu using rofi and get user choice
    choice=$(echo -e "$networks" | $menu_cmd)

    # Handle the user's choice
    if [[ -n "$choice" ]]; then
        if [[ "$choice" == "Disconnect" ]]; then
            nmcli device disconnect wlan0
        else
            nmcli device wifi connect "$choice"
        fi
    fi
}

# Main script logic
if [[ "$1" == "--toggle-menu" ]]; then
    show_menu
else
    # Continuously show status and update Polybar
    while true; do
        show_status
        sleep 5
    done
fi
