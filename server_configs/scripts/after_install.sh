#!/bin/bash

# Install libaries

cd /home/ubuntu/despliegue
source home/ubuntu/miniconda3/etc/profile.d/conda.sh
/home/ubuntu/miniconda3/bin/conda create --force --name djangopa python=3.6
/home/ubuntu/miniconda3/bin/conda activate djangopa
pip install -r requirements.txt
sudo a2ensite accidentesaereros-backend.conf
sudo /etc/init.d/apache2 restart

echo "Ready for after_install"