#!/bin/bash
set -e

docker build -f Dockerfile56 -t registry.ott-consult.de/oc/php-fpm:5.6 .
docker push registry.ott-consult.de/oc/php-fpm:5.6
docker build -f Dockerfile70 -t registry.ott-consult.de/oc/php-fpm:7.0 .
docker push registry.ott-consult.de/oc/php-fpm:7.0
docker build -f Dockerfile71 -t registry.ott-consult.de/oc/php-fpm:7.1 .
docker tag registry.ott-consult.de/oc/php-fpm:7.1 registry.ott-consult.de/oc/php-fpm:latest
docker push registry.ott-consult.de/oc/php-fpm:7.1
docker push registry.ott-consult.de/oc/php-fpm:latest

