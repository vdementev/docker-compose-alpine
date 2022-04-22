FROM docker:latest
RUN apk update && \
    apk upgrade && \
    apk add --no-cache \
    git \
    git-lfs \
    ca-certificates \
    curl \
    openssh-client \
    rsync \
    py-pip \
    py3-yaml \
    composer \
    && apk add --no-cache --virtual .docker-compose-deps \
    gcc \
    libc-dev \
    libffi-dev \
    make \
    openssl-dev \
    python3-dev \
    py3-cryptography \
    py3-bcrypt \
    py3-pynacl \
    && pip3 install --upgrade pip \
    && pip3 install docker-compose \
    && apk del .docker-compose-deps \
    && rm -rf /var/cache/apk/ && rm -rf /root/.cache