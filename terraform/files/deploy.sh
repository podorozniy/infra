#!/bin/bash
set -e

source ~/.profile
git clone https://github.com/Artemmkin/reddit.git
cd reddit
bundle install

sudo mv /tmp/puma.service /etc/systemd/system/puma.service
sudo bundle install

echo "  ----- start the application -----  "
sudo puma -d
sudo systemctl enable puma