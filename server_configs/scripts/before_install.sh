#!/bin/bash

sudo apt update
sudo apt -y install apache2
pip3 install -y virtualenv
sudo apt install -y libapache2-mod-wsgi-py3
sudo apt install -y libpq-dev python-dev