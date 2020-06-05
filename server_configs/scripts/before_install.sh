#!/bin/bash

sudo apt update
sudo apt install apache2
pip3 install virtualenv
sudo apt install libapache2-mod-wsgi-py3
sudo apt install libpq-dev python-dev
sudo apt install python3.6-dev