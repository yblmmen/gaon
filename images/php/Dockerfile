FROM hwlim78/gaon-php:v1.0

WORKDIR /root
RUN apt-get update


RUN apt-get update && apt-get install -y \
    git \
    curl \
    libcurl4 \
    libcurl4-openssl-dev \
    zlib1g-dev \
    libicu-dev \
    libmemcached-dev \
    memcached \
    libwebp-dev \
    build-essential \
    libfreetype6-dev \
    libjpeg62-turbo-dev \
    libmcrypt-dev \
    libpng-dev \
    libonig-dev \
    libxml2-dev \
    libxpm-dev \
    zip \
    libzip-dev \
    unzip 

RUN docker-php-ext-install pdo_mysql mbstring exif pcntl bcmath mysqli opcache zip

# Redis 확장이 이미 설치되어 있는지 확인하고, 설치되어 있지 않다면 설치합니다.
RUN if ! pecl list | grep -q redis; then \
    pecl install redis && docker-php-ext-enable redis; \
    else \
    echo "Redis is already installed"; \
    fi

RUN docker-php-ext-configure gd --enable-gd --with-freetype --with-jpeg --with-webp

RUN docker-php-ext-install gd

# Install Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

EXPOSE 9000
