#!/bin/sh

echo "********************************************************"
echo "Waiting for the configuration server to start on port $CONFIG_SERVICE_PORT"
echo "********************************************************"
while ! `nc -z config-service $CONFIG_SERVICE_PORT `; do sleep 3; done
echo ">>>>>>>>>>>> Configuration Server has started"

echo "********************************************************"
echo "Waiting for the database server to start on port $DATABASE_PORT"
echo "********************************************************"
while ! `nc -z database $DATABASE_PORT`; do sleep 3; done
echo ">>>>>>>>>>>> Database Server has started"

echo "********************************************************"
echo "Starting License Server with Configuration Service :  $CONFIG_SERVICE_URI";
echo "********************************************************"
java -Dspring.cloud.config.uri=$CONFIG_SERVICE_URI -Dspring.profiles.active=$PROFILE -jar /usr/local/licensing-service/licensing-service3-0.0.1-SNAPSHOT.jar
