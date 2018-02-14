# Built from https://github.com/kolide/fleet/
# because the version on DockerHub could be outdated
FROM kolide/fleet

RUN apk --no-cache update && \
    apk --no-cache add python py-pip py-setuptools ca-certificates curl groff less jq && \
    pip --no-cache-dir install awscli && \
    rm -rf /var/cache/apk/*
RUN mkdir /certs
RUN mkdir /kolide

COPY run.sh /kolide/run.sh
RUN chmod +x /kolide/run.sh

RUN ln -sf /dev/stdout /tmp/osquery_result
RUN ln -sf /dev/stderr /tmp/osquery_status

ENV KOLIDE_SERVER_CERT=/certs/kolide.crt
ENV KOLIDE_SERVER_KEY=/certs/kolide.key
CMD ["/kolide/run.sh"]
