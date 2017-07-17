#Orignal Dockerfile https://github.com/bvis/docker-grafana/blob/master/Dockerfile
#Modified the ENV to conform with the New ENV layout.
#Added the volume for /var/lib/grafana for persistance.
#Since i will probably never put this on docker hub i removed all the LABEL and ARG Tags.

FROM grafana/grafana:4.2.0

RUN apt-get update && apt-get install -y curl

COPY rootfs /

VOLUME ["/var/lib/grafana"]


ENV GF_SECURITY_ADMIN_PASSWORD="admin" \
    PROMETHEUS_ENDPOINT="http://prometheus:9090" \
    ELASTICSEARCH_ENDPOINT="http://elasticsearch:9200" \
    ELASTICSEARCH_USER="readuser" \
    ELASTICSEARCH_PASSWORD="myelasticpass"

ENTRYPOINT ["/init.sh"]