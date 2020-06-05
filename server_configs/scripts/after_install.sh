#!/usr/bin/env bash

# Install libaries

cd /home/ubuntu/despliegue
pwd
echo "-------------------------------------------------------------------"
echo "-------------------------------------------------------------------"
which virtualenv
virtualenv -p python3 venv
source venv/bin/activate
pip install -r requirements.txt
# python manage.py collectstatic --no-input
sudo a2ensite accidentesaereros-backend.conf
sudo /etc/init.d/apache2 restart

echo "Ready for after_install"