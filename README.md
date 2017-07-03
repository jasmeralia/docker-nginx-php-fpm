# docker-nginx-php-fpm

[![Docker Pulls](https://img.shields.io/docker/pulls/stormerider/docker-nginx-php-fpm.svg)](https://img.shields.io/docker/pulls/stormerider/docker-nginx-php-fpm.svg "Get your own image badge on shields.io")
[![Docker Stars](https://img.shields.io/docker/stars/stormerider/docker-nginx-php-fpm.svg)](https://img.shields.io/docker/stars/stormerider/docker-nginx-php-fpm.svg "Get your own image badge on shields.io")
[![Docker Layers](https://images.microbadger.com/badges/image/stormerider/docker-nginx-php-fpm.svg)](https://microbadger.com/images/stormerider/docker-nginx-php-fpm "Get your own image badge on microbadger.com")
[![Docker Version](https://images.microbadger.com/badges/version/stormerider/docker-nginx-php-fpm.svg)](https://microbadger.com/images/stormerider/docker-nginx-php-fpm "Get your own version badge on microbadger.com")

A Dockerfile that installs the latest nginx, php-apc and php-fpm.

Based off of [eugeneware](https://github.com/eugeneware/docker-wordpress-nginx)'s docker image for Wordpress and Nginx.

NB: A big thanks to [jbfink](https://github.com/jbfink/docker-wordpress) who did most of the hard work on the wordpress parts!

You can check out his [Apache version here](https://github.com/jbfink/docker-wordpress).

## Installation

The easiest way to get this docker image installed is to pull the latest version
from the Docker registry:

```bash
$ docker pull stormerider/docker-nginx-php-fpm
```

If you'd like to build the image yourself then:

```bash
$ git clone https://github.com/stormerider/docker-nginx-php-fpm.git
$ cd docker-nginx-php-fpm
$ sudo docker build -t="stormerider/docker-nginx-php-fpm" .
```

## Usage

To spawn a new instance of wordpress on port 80.  The -p 80:80 maps the internal docker port 80 to the outside port 80 of the host machine.

```bash
$ sudo docker run -p 80:80 --name docker-nginx-php-fpm -d stormerider/docker-nginx-php-fpm
```

Start your newly created docker.

```
$ sudo docker start docker-nginx-php-fpm
```

After starting the docker-nginx-php-fpm check to see if it started and the port mapping is correct.  This will also report the port mapping between the docker container and the host machine.

```
$ sudo docker ps

0.0.0.0:80 -> 80/tcp docker-nginx-php-fpm
```

You can the visit the following URL in a browser on your host machine to get started:

```
http://127.0.0.1:80
```
