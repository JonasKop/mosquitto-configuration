FROM docker.io/eclipse-mosquitto:2.0.18

COPY ./docker-entrypoint.sh /docker-entrypoint-custom.sh

ENTRYPOINT ["/docker-entrypoint-custom.sh"]
CMD ["/usr/sbin/mosquitto", "-c", "/mosquitto/config/mosquitto.conf"]