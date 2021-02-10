FROM alpine:latest

RUN apk update && \
    apk upgrade && \
    apk add vnstat && \
    rm -rf /var/cache/apk/*

VOLUME /var/lib/vnstat

CMD ["/usr/sbin/vnstatd", "-n"]
