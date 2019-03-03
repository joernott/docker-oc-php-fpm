#!/bin/bash
set -e
set -x
curl -sSo src/tmp/install/functions.sh https://raw.githubusercontent.com/joernott/docker-oc-install-library/master/install_functions.sh
source src/tmp/install/functions.sh

patch_dockerfile Dockerfile71
docker build -f Dockerfile71 -t registry.ott-consult.de/oc/php-fpm:7.1 .
docker push registry.ott-consult.de/oc/php-fpm:7.1

patch_dockerfile Dockerfile72
docker build -f Dockerfile72 -t registry.ott-consult.de/oc/php-fpm:7.2 .
docker tag registry.ott-consult.de/oc/php-fpm:7.2 registry.ott-consult.de/oc/php-fpm:latest
docker push registry.ott-consult.de/oc/php-fpm:7.2
docker push registry.ott-consult.de/oc/php-fpm:latest
