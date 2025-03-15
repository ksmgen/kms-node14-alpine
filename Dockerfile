FROM node:14-alpine

# Install necessary packages
RUN apk add --no-cache \
    git \
    bash \
    curl \
    wget \
    nano \
    python3 \
    make \
    g++ \
    cairo-dev \
    pango-dev \
    libpng-dev \
    jpeg-dev \
    giflib-dev \
    librsvg-dev \
    tzdata && \
    cp /usr/share/zoneinfo/Asia/Jakarta /etc/localtime && \
    echo "Asia/Jakarta" > /etc/timezone
    
# Set working directory
WORKDIR /var/www