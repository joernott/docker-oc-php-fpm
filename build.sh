#!/bin/bash
set -e
set -x
curl -sSo src/tmp/install/functions.sh https://raw.githubusercontent.com/joernott/docker-oc-install-library/master/install_functions.sh
source src/tmp/install/functions.sh

patch_dockerfile Dockerfile56
docker build -f Dockerfile56 -t registry.ott-consult.de/oc/php-fpm:5.6 .
docker push registry.ott-consult.de/oc/php-fpm:5.6

patch_dockerfile Dockerfile70
docker build -f Dockerfile70 -t registry.ott-consult.de/oc/php-fpm:7.0 .
docker push registry.ott-consult.de/oc/php-fpm:7.0

patch_dockerfile Dockerfile71
docker build -f Dockerfile71 -t registry.ott-consult.de/oc/php-fpm:7.1 .
docker tag registry.ott-consult.de/oc/php-fpm:7.1 registry.ott-consult.de/oc/php-fpm:latest
docker push registry.ott-consult.de/oc/php-fpm:7.1
docker push registry.ott-consult.de/oc/php-fpm:latest

