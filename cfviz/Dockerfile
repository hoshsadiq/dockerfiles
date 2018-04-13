FROM alpine:latest

RUN apk add --no-cache python curl

RUN curl -fsSL -o /usr/bin/cfviz https://raw.githubusercontent.com/benbc/cloud-formation-viz/master/cfviz && \
    chmod +x /usr/bin/cfviz

RUN apk del curl

ENTRYPOINT [ "cfviz" ]
