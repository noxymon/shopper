FROM dunglas/frankenphp:sha-e7e0dbf-php8.3-alpine
LABEL authors="noxymon"

RUN install-php-extensions \
    gd \
    intl \
    bcmath \
    memcached \
    redis \
    mysqli \
    pdo_mysql \
    zip

COPY .docker/php.ini $PHP_INI_DIR/php.ini
COPY --chown=nobody:nobody . /app/public

EXPOSE 3000
