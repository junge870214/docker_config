FROM php:7.1-fpm

#RUN rm -rf /usr/local/etc/* 
#COPY  ./php /usr/local/etc/
#RUN  mkdir -p /usr/local/etc/php/conf.d/
RUN docker-php-ext-install  mysqli pdo pdo_mysql

RUN  apt-get update && apt-get install -y --no-install-recommends unzip libssl-dev libpcre3 libpcre3-dev \
    && cd /tmp \
    && curl -sSL -o php7.zip https://github.com/websupport-sk/pecl-memcache/archive/php7.zip \
    && unzip php7 \
    && cd pecl-memcache-php7 \
    && /usr/local/bin/phpize \
    && ./configure --with-php-config=/usr/local/bin/php-config \
    && make \
    && make install \
    && echo "extension=memcache.so" > /usr/local/etc/php/conf.d/ext-memcache.ini \
    && rm -rf /tmp/pecl-memcache-php7 php7.zip \
    && apt-get autoremove -y \
    && rm -rf /var/lib/apt/lists/* \
    && apt-get clean
#RUN mkdir -p /usr/src/php/ext/memcached
#ADD ./php-memcached /usr/src/php/ext/memcached
#WORKDIR /usr/src/php/ext/memcached
#RUN docker-php-ext-configure memcached \
#  && docker-php-ext-install memcached
#RUN mkdir -p /wordpress/
#ADD ./wordpress/ /wordpress/
#RUN chown -R www-data:www-data /wordpress/
#WORKDIR /wordpress/
