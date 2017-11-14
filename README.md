# Docker image: CentOS 7 with PHP-FPM from IUS
This image starts PHP-fpm from the IUS repository

The version tagged 5.6 runs PHP 5.6, 7.0 refers to PHP 7.0 and the tags 7.1
and latest are used for PHP 7.1. Make sure, that you choose the right version
of PHP for your application.

FPM runs as user/group php-fpm. The pool config is in the file
/etc/php-fpm.d/www.conf which has only been modified to listen on all ports
and allow connections from all clients. Also the chdir parameter has been
set to /php. You can override that file by mounting it into the container

The application is served from the /php folder. To provide an application,
just build an image based on this or mount it into /php.

Options to php-fpm can be passed by setting the PHP_OPTIONS variable

## Usage:
### Simple usage
```
docker run -d -p 9000:9000 \
    registry.ott-consult.de/oc/php-fpm:latest
```

### Complete example
```
docker run -d -p 9000:9000 \
    -e PHP_OPTIONS='-d date.timezone = "Europe/Berlin"'
    -v /data/phpapp/etc/php-fpm.d/www.conf:/etc/php-fpm.d/www.conf \
    -v /data/phpapp/php:/php \
    registry.ott-consult.de/oc/php-fpm:latest
```
