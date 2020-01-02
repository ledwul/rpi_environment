#!/bin/bash
sudo cp ledwul_led_service.sh /usr/bin/ledwul_led_service.sh
sudo cp ledwul_website_service.sh /usr/bin/ledwul_website_service.sh
sudo chmod +x /usr/bin/ledwul_led_service.sh
sudo chmod +x /usr/bin/ledwul_website_service.sh
echo "Placed the service scripts in /usr/bin/ and changed access permissions."
sudo cp ledwul_led_service.service /etc/systemd/system/ledwul_led_service.service
sudo cp ledwul_website_service.service /etc/systemd/system/ledwul_website_service.service
sudo chmod 644 /etc/systemd/system/ledwul_led_service.service
sudo chmod 644 /etc/systemd/system/ledwul_website_service.service
echo "Placed the Unit files for the services in /etc/systemd/system/ and changed access permissions."
sudo systemctl start ledwul_led_service
sudo systemctl start ledwul_website_service
sudo systemctl enable ledwul_led_service
sudo systemctl enable ledwul_website_service
echo "Started both services and enabled them, such that they start on boot."
