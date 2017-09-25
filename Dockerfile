FROM gnkz/php7.1-cli-alpine:0.1.4

RUN apk --no-cache add php7-fpm=$PHP_VERSION && \
    sed -i "s/^listen = 127.0.0.1:9000/listen = 9000/g" /etc/php7/php-fpm.d/www.conf && \
    sed -i "s/^;daemonize = yes/daemonize = no/g" /etc/php7/php-fpm.conf

COPY entry.sh /usr/bin/entry
RUN chmod +x /usr/bin/entry

ENTRYPOINT ["/usr/bin/entry"]
