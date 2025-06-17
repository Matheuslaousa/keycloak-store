FROM quay.io/keycloak/keycloak:26.2.5

ENV KEYCLOAK_ADMIN=admin \
    KEYCLOAK_ADMIN_PASSWORD=admin \
    KC_DB=h2 \
    KC_HTTP_ENABLED=true \
    KC_LOG_LEVEL=INFO

EXPOSE 8080

ENTRYPOINT ["/opt/keycloak/bin/kc.sh", "start-dev"]
