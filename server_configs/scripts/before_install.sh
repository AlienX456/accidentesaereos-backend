#!/usr/bin/env bash

sudo apt update
sudo apt install apache2
sudo apt install -y python3.6
pip3 install --user --upgrade virtualenv
sudo apt install libapache2-mod-wsgi-py3