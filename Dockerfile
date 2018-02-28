FROM blang/latex

MAINTAINER Jan Stümmel <info@janstuemmel.de>

RUN apt-get -y update \
    && apt-get -yq install \
        biber \
        curl \
        dpkg \
        jq \
        locales \
        make \
        rsync \
        tar \
        wget \
        wput \
        zip \
    && apt-get autoclean \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ENV PANDOC_FILE_NAME="/tmp/pandoc.deb"
COPY ./download-pandoc /usr/bin/download-pandoc

RUN apt-get -y update \
    && apt-get -yq install \
        php-cli \
        php-curl \
        php-json \
    && /usr/bin/download-pandoc \
    && apt-get -yq purge \
        php-cli \
        php-curl \
        php-json \
    && apt-get -yq autoremove --purge \
    && apt-get -yq autoclean \
    && apt-get -yq clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

WORKDIR /data
VOLUME ["/data"]
