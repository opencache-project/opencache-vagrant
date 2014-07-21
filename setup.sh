#!/bin/bash

sudo ln -s /home/vagrant/.Xauthority /root/.Xauthority
cd /home/vagrant/opencache/ && git pull > /dev/null 2>&1
sudo /etc/init.d/mongodb stop > /dev/null 2>&1
sudo mkdir -p /data/db
