#!/bin/bash

# Informing user about system setup
echo "Starting your system-setup soon!"
sleep 1

# Check if sudo privileges are available
if [ "$EUID" -ne 0 ]; then
    echo "Please run this script with sudo or as root"
    exit 1
fi

# Updating package repositories
echo "Running: apt update"
sudo apt update

# Installing Apache web server
echo "Installing Apache"
sudo apt-get install apache2

# Installing PHP
echo "Installing PHP"
sudo apt-get purge 'php*'                   # Removing existing PHP packages
sudo add-apt-repository ppa:ondrej/php      # Adding PHP repository
sudo apt update

# Selecting PHP versions to install
echo "Enter PHP versions to install (separated by spaces): "
read -a versions

# Installing selected PHP versions
for v in "${versions[@]}"; do
    echo "Installing PHP version $v"
    sudo apt-get install php$v php$v-mysql php$v-mbstring php$v-mcrypt php$v-bcmath php$v-xml php$v-gd php$v-zip php$v-curl php$v-fpm php$v-mongo -y
done

echo "Installation of PHP versions ${versions[@]} completed!"

# Installing Redis
echo "Installing Redis"
sudo apt-get install build-essential tcl8.6    # Installing prerequisites for Redis
sudo apt install redis-server                    # Installing Redis server
sudo nano /etc/redis/redis.conf                 # Opening Redis configuration file for editing
sudo sed -i 's/^supervised.*/supervised systemd/' /etc/redis/redis.conf  # Setting supervised directive to systemd

# Installing Composer
echo "Installing Composer"
sudo apt-get install curl                        # Installing curl
curl -sS https://getcomposer.org/installer | sudo php -- --install-dir=/usr/local/bin --filename=composer  # Downloading and installing Composer

# Installing Git
echo "Installing Git"
sudo apt install git                             # Installing Git
