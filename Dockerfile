FROM gnkz/php7.1-cli-dev:dev

RUN apk --no-cache add php7-fpm=$PHP_VERSION

ENTRYPOINT ["/bin/sh"]
