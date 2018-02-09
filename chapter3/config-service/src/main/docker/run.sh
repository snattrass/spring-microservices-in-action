#!/bin/sh
echo "********************************************************"
echo "Starting Configuration Server"
echo "********************************************************"
export _JAVA_OPTIONS="-Dhttp.proxyHost=proxy.sys.net -Dhttp.proxyPort=8080 -Dhttps.proxyHost=proxy.sys.net -Dhttps.proxyPort=8080"
java -jar /usr/local/config-service/config-service-0.0.1-SNAPSHOT.jar
