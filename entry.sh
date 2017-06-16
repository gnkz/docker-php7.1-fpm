#!/bin/sh

source /usr/bin/setup

sed -i "s/^user = nobody/user = $USERNAME/g" /etc/php7/php-fpm.d/www.conf
sed -i "s/^group = nobody/group = $USERNAME/g" /etc/php7/php-fpm.d/www.conf

exec /sbin/su-exec root /usr/sbin/php-fpm7
