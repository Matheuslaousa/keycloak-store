FROM quay.io/keycloak/keycloak:26.2.5

WORKDIR /opt/keycloak

# Comando para habilitar modo de desenvolvimento e configuração
ENTRYPOINT ["/opt/keycloak/bin/kc.sh", "start-dev"]
