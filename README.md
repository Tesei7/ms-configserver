# How to run create docker image

**mvn clean package docker:build**

# To run image

## Create network

**docker network create ms-net**

## Run image

**docker run
  -p 8888:8888
  --env ENCRYPT_KEY=\*\*\*\*\*\*
  --env EUREKASERVER_PORT=8761
  --name ms-confserver
  --network ms-net
  tesei7/ms-confserver:latest**