#!/usr/bin/env bash

sudo apt-get update
sudo apt-get install -y python3 python-dev python3-pip supervisor
pip install --user --upgrade virtualenv