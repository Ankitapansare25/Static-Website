#!/bin/bash

# Update packages
yum update -y

# Install Nginx and git
yum install -y nginx git

# Start and enable Nginx
systemctl start nginx
systemctl enable nginx

# Clear default HTML directory
rm -rf /usr/share/nginx/html/*

# Clone GitHub project 
git clone https://github.com/Ankitapansare25/Static-Website.git /tmp/site &&
sudo cp -r /tmp/site/* /usr/share/nginx/html/

# Set proper file permissions
chown -R nginx:nginx /usr/share/nginx/html
chmod -R 755 /usr/share/nginx/html

# Restart Nginx 
systemctl restart nginx