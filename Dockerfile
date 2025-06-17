FROM quay.io/keycloak/keycloak:26.2.5

ENV KC_BOOTSTRAP_ADMIN_USERNAME=admin
ENV KC_BOOTSTRAP_ADMIN_PASSWORD=admin
ENV KC_DB=dev-mem
ENV KC_HTTP_ENABLED=true
ENV KC_LOG_LEVEL=INFO

EXPOSE 8080

ENTRYPOINT ["/opt/keycloak/bin/kc.sh", "start-dev"]
