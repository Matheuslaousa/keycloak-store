# Usa a imagem oficial do Keycloak
FROM quay.io/keycloak/keycloak:26.2.5


ENV KEYCLOAK_ADMIN=admin
ENV KEYCLOAK_ADMIN_PASSWORD=admin

# Comando para iniciar o Keycloak em modo desenvolvimento
ENTRYPOINT ["/opt/keycloak/bin/kc.sh", "start-dev"]
