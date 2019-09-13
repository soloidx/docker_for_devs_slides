#!/usr/bin/env bash

#START OMIT

docker run --rm --name test-php -v "$PWD"/scripts/ex01/www:/var/www/html \
    -p 8080:80 php:7.2-apache

#END OMIT
