# API Gateway

A demo with Ocelot API Gateway.

## Quick start
Install Docker

run `start.sh` to start

run `stop.sh` to stop

## Getting started

### Run Consul
`docker run -d --name consul -p 8500:8500  consul`

#### Build the docker images

`docker build -t api-gateway gateway/.`

`docker build -t product-java product-service/.`

`docker build -t weather WeatherForecast/.`

### Run services
`docker run -d -p 800:80 --link consul:consul api-gateway`

`docker run -d -p 850:8080 --link consul:consul product-java`

`docker run -d -p 900:80 --link consul:consul weather`
