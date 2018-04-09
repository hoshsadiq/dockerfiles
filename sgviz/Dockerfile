FROM debian:latest

RUN set -ex; \
    apt-get update; \
    apt-get install -y -q ruby graphviz; \
    apt-get clean

RUN gem install sgviz --no-document

ENTRYPOINT [ "sgviz" ]
