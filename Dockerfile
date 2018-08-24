
FROM php:7.1-fpm-alpine

RUN sed -i -e 's/v3\.4/v3.5/g' /etc/apk/repositories
RUN apk --no-cache add \
  bash \
  curl \
  libmcrypt \
  libmcrypt-dev \
  openssl \
  postgresql-dev \
  wget

RUN docker-php-ext-install \
  mbstring \
  mcrypt \
  pcntl \
  pdo_pgsql

ENV PATH "/composer/vendor/bin:$PATH"
ENV COMPOSER_ALLOW_SUPERUSER 1
ENV COMPOSER_HOME /composer
RUN curl -sS https://getcomposer.org/installer | \
    php -- --install-dir=/usr/local/bin --filename=composer --no-ansi --version=1.4.1

WORKDIR /var/www