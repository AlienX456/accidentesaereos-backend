docker stop $(docker ps -aq)
docker rm $(docker ps -aq)
. /home/ubuntu/enviroment/accidentesbackend-vars.sh
echo 'Database var $DATABASE_PORT'
docker run -e SECRET_KEY=$SECRET_KEY -e DATABASE_NAME=$DATABASE_NAME -e DATABASE_USER=$DATABASE_USER -e DATABASE_PASS=$DATABASE_PASS -e  DATABASE_HOST=$DATABASE_HOST -e DATABASE_PORT=$DATABASE_PORT -itd -p 8000:8000 alienx456/accidentesaereos-backend:latest