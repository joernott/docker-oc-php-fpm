# Docker image: CentOS 7 with PHP-FPM from IUS
This image starts PHP-fpm from the IUS repository

The version tagged 5.6 runs PHP 5.6, 7.0 refers to PHP 7.0 and the tags 7.1
and latest are used for PHP 7.1. Make sure, that you choose the right version
of PHP for your application.

## Usage:
```
docker run -d -p 9000:9000 \
    registry.ott-consult.de/oc/php-fpm:latest
```
