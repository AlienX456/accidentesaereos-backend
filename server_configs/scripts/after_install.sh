#!/usr/bin/env bash

# Install libaries

cd /home/ubuntu/despliegue
/home/ubuntu/miniconda3/bin/conda create --name djangopa python=3.6
/home/ubuntu/miniconda3/bin/conda activate djangopa
pip install -r requirements.txt
sudo a2ensite accidentesaereros-backend.conf
sudo /etc/init.d/apache2 restart

echo "Ready for after_install"