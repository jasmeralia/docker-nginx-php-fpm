#!/bin/bash

if [ "x$1" == "x" ]; then
  CACHE="--no-cache"
else
  CACHE=""
fi

DATE=$(date +%Y%m%d.%H%M)
echo "Building docker-nginx-php-fpm:trusty.$DATE"
docker build $CACHE -t="stormerider/docker-nginx-php-fpm:trusty.$DATE" . && \
echo "" && \
echo "Pushing docker-nginx-php-fpm:trusty.$DATE" && \
docker push stormerider/docker-nginx-php-fpm:trusty.$DATE

echo ""
echo "Building docker-nginx-php-fpm:latest"
docker build -t="stormerider/docker-nginx-php-fpm:latest" . && \
echo "" && \
echo "Pushing docker-nginx-php-fpm:latest" && \
docker push stormerider/docker-nginx-php-fpm:latest

#echo ""
#echo "Building docker-nginx-php-fpm:xenial.$DATE"
#docker build $CACHE -t="stormerider/docker-nginx-php-fpm:xenial.$DATE" . -f Dockerfile-xenial && \
#echo "" && \
#echo "Pushing docker-nginx-php-fpm:xenial.$DATE" && \
#docker push stormerider/docker-nginx-php-fpm:xenial.$DATE
#
#echo ""
#echo "Building docker-nginx-php-fpm:xenial"
#docker build -t="stormerider/docker-nginx-php-fpm:xenial" . -f Dockerfile-xenial && \
#echo "" && \
#echo "Pushing docker-nginx-php-fpm:xenial" && \
#docker push stormerider/docker-nginx-php-fpm:xenial
