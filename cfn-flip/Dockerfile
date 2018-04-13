FROM alpine:latest

RUN apk add --no-cache python py-pip

RUN pip install --no-cache-dir cfn-flip

ENTRYPOINT [ "cfn-flip" ]
