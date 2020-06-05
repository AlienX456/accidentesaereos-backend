#!/usr/bin/env bash

# Install libaries

cd /home/ubuntu/despliegue
conda create --name djangopa python=3.6
conda activate djangopa
pip install -r requirements.txt
sudo a2ensite accidentesaereros-backend.conf
sudo /etc/init.d/apache2 restart

echo "Ready for after_install"