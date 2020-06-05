"""
WSGI config for PABEDJANGO project.

It exposes the WSGI callable as a module-level variable named ``application``.

For more information on this file, see
https://docs.djangoproject.com/en/3.0/howto/deployment/wsgi/
"""

import os
import sys

sys.path.append('/home/esteban/Documents/Proyectos/accidentes-aereos/back-end')
sys.path.append('/home/esteban/Documents/Proyectos/accidentes-aereos/back-end/PABEDJANGO')

python_home = '/home/ubuntu/despliegue/venv'

activate_this = python_home + '/bin/activate_this.py'

exec(compile(open(activate_this,"rb").read(), activate_this, 'exec'), dict(__file__=activate_this))


from django.core.wsgi import get_wsgi_application

os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'PABEDJANGO.settings')

application = get_wsgi_application()
