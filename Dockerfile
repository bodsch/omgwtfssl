FROM alpine

RUN \
  apk --no-cache update && \
  apk --no-cache upgrade && \
  apk --no-cache add \
    bash \
    openssl

WORKDIR /certs

COPY generate-certs /usr/bin/generate-certs

CMD /usr/bin/generate-certs

VOLUME /certs
