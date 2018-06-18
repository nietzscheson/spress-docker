FROM composer/composer
MAINTAINER Marc Pantel <pantel.m@gmail.com>

WORKDIR /tmp

ARG DEFAULT_VERSION=v2.2.0

ENV VERSION=${DEFAULT_VERSION}

RUN curl -LOS "https://github.com/spress/Spress/releases/download/$VERSION/spress.phar"
RUN chmod +x spress.phar
RUN mv spress.phar /usr/local/bin/spress

VOLUME ["/app"]
WORKDIR /app

EXPOSE 4000

CMD ["spress"]
ENTRYPOINT ["spress"]
