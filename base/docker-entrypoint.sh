#!/bin/bash
set -e

mysql -u root -ptoor octobercms_db < /var/www/html/database.sql

cd /var/www/html

composer install

composer update

chmod -R 777 /var/www/html

supervisord -c /etc/supervisord.conf