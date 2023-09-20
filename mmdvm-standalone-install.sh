#This will work for Fedora Server 38.
#This script will not install prerequisites. (g++, etc.)
#How to use:
#git clone https://github.com/Jonesy1080/mmdvm-install...
#sudo chmod +x mmdvm-standalone-install.sh
#sudo ./mmdvm-standalone-install.sh

#Part 1: Git MMDVMHost
git clone https://github.com/g4klx/MMDVMHost
cd MMDVMHost

#TODO: Add line to add #include <cstdint> to:
#nano M17Utils.cpp
#NullController.cpp

make
sudo make install

#The default config file is located at: /etc/MMDVM.ini

#Part 2: Install and configure NGINX
sudo dnf install nginx
sudo systemctl enable nginx
sudo systemctl start nginx

#User: Add port forwarding through Fedora Server System Networking for port 80. Eventually maybe 443 if https gets enabled.

#Fedora default: /usr/share/nginx/html
#Pi-Star default: /var/www/dashboard
cd /etc/nginx/sites-available
#-OR- /etc/nginx/sites-enabled
git clone https://repo.w0chp.net/WPSD-Dev/W0CHP-PiStar-Dash.git dashboard

#nginx config files:
#pi-star default: /etc/nginx/sites-enabled/pi-star (type: text)
#Fedora default: /etc/nginx.nginx.conf
sudo cp /etc/nginx/nginx.conf /etc/nginx-fedora-deafualt.conf
#Fedora new: / / / /site-mmdvm

cp
#rename index.conf 
git clone index.conf


