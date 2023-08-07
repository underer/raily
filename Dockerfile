
FROM alpine:edge

RUN apk update && \
    apk add --no-cache ca-certificates caddy wget && \
    rm -rf /var/cache/apk/*

ADD start.sh /start.sh
RUN chmod +x /start.sh

# The error message states that the Dockerfile must expose a tcp port.
# To fix this, we can use the EXPOSE instruction to specify a port to expose.
EXPOSE 80

CMD /start.sh
