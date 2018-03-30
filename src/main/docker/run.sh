#!/bin/sh
#line breaks should be LF
echo "********************************************************"
echo "Waiting for the eureka server to start on port $EUREKASERVER_PORT"
echo "********************************************************"
while ! `nc -z ms-eureka $EUREKASERVER_PORT`; do sleep 3; done
echo "******* Eureka Server has started ********"

echo "********************************************************"
echo "Starting Configuration Server"
echo "********************************************************"
java -jar -Deureka.client.serviceUrl.defaultZone=$EUREKASERVER_URI /usr/local/@project.artifactId@/@project.build.finalName@.jar
