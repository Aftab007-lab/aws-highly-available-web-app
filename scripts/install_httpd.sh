#!/bin/bash

# Update system package (-y for yes)
yum update -y

# Install Apache HTTP Server
yum install httpd -y

# Start and enable service
systemctl start httpd
systemctl enable httpd

# Create simple web page
echo "Hello this is from $(hostname)" > /var/www/html/index.html

# Setting proper permissions
chmod 755 /var/www/html/index.html
