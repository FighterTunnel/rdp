#!/bin/bash

# Function to restart SSH service
restart_ssh() {
    echo "Restarting SSH service..."
    if systemctl restart sshd; then
        echo "SSH service restarted successfully"
    else
        echo "Failed to restart SSH service"
        exit 1
    fi
}

# Download SSH configuration
echo "Downloading SSH configuration..."
if wget -qO- -O /etc/ssh/sshd_config https://raw.githubusercontent.com/FighterTunnel/ssh/main/root/sshd_config; then
    echo "SSH configuration downloaded successfully"
else
    echo "Failed to download SSH configuration"
    exit 1
fi

# Restart SSH service
restart_ssh

# Clear screen
clear

# Get password input
echo -e "Masukkan Password:"
read -e pwe

# Validate password input
if [ -z "$pwe" ]; then
    echo "Password cannot be empty"
    exit 1
fi

# Change root password
echo "Changing root password..."
if usermod -p $(perl -e "print crypt("$pwe","Q4")") root; then
    echo "Password changed successfully"
else
    echo "Failed to change password"
    exit 1
fi

# Clear screen
clear

# Display VPS information
printf "Mohon Simpan Informasi Akun VPS Ini
============================================
Ip address = $(curl -Ls http://ipinfo.io/ip 2>/dev/null || echo "Unable to get IP")
Username   = root
Password   = $pwe
============================================\n"

echo ""
exit 0