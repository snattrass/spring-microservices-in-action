#!/bin/sh

echo "********************************************************"
echo "Waiting for the eureka server to start  on port $EUREKASERVER_PORT"
echo "********************************************************"
while ! `nc -z eurekaserver $EUREKASERVER_PORT`; do sleep 3; done
echo ">>>>>>>>>>>> Eureka Server has started"

echo "********************************************************"
echo "Starting Configuration Service with Eureka Endpoint:  $EUREKASERVER_URI";
echo "********************************************************"
                    export _JAVA_OPTIONS="-Dhttp.proxyHost=proxy.sys.net -Dhttp.proxyPort=8080 -Dhttps.proxyHost=proxy.sys.net -Dhttps.proxyPort=8080"
java -Djava.security.egd=file:/dev/./urandom -Deureka.client.serviceUrl.defaultZone=$EUREKASERVER_URI -jar /usr/local/configserver/config-service-0.0.1-SNAPSHOT.jar
