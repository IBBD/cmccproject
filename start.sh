#!/bin/bash
# 
# 
# USAGES: ./star.sh
docker-compose up -d
cname=ibbd-cmccproject
docker exec  $cname  sh -c 'exec /etc/init.d/apache2 start'
docker exec  $cname  sh -c 'exec memcached -d -u memcache'
# docker exec  $cname  sh -c 'exec php5-fpm -D -c /usr/local/etc/php/php.ini -y /usr/local/etc/php-fpm.conf'

