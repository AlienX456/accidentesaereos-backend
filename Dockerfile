FROM ubuntu:focal

ENV DEBIAN_FRONTEND=noninteractive

EXPOSE 8000

RUN apt-get update \
  && apt-get install -y python3-pip python3-dev \
  && cd /usr/local/bin \
  && ln -s /usr/bin/python3 python \
  && pip3 install --upgrade pip

RUN apt -y install apache2 \
  && apt install -y libapache2-mod-wsgi-py3 \
  && apt install -y libpq-dev python-dev

COPY server_configs/apache/accidentesaereros-backend.conf /etc/apache2/sites-available

COPY . /root/project/

RUN chmod +x /root

WORKDIR /root/project

RUN pip install -r requirements.txt

RUN a2ensite accidentesaereros-backend.conf

ENTRYPOINT apache2ctl -DFOREGROUND && \
    echo "export SECRET_KEY=$SECRET_KEY" >> /etc/apache2/envvars && \
    echo "export DATABASE_NAME=$DATABASE_NAME" >> /etc/apache2/envvars && \	
    echo "export DATABASE_USER=$DATABASE_USER" >> /etc/apache2/envvars && \	
    echo "export DATABASE_PASS=$DATABASE_PASS" >> /etc/apache2/envvars && \	
    echo "export DATABASE_HOST=$DATABASE_HOST" >> /etc/apache2/envvars && \	
    echo "export DATABASE_PORT=$DATABASE_PORT" >> /etc/apache2/envvars