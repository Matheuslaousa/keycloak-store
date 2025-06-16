FROM quay.io/keycloak/keycloak:26.2.5

ENV KC_DB=h2 \
    KC_HTTP_ENABLED=true \
    KC_LOG_LEVEL=INFO \
    KEYCLOAK_ADMIN=admin \
    KEYCLOAK_ADMIN_PASSWORD=admin

EXPOSE 8080

ENTRYPOINT ["kc.sh", "start-dev"]
