# Usa imagem oficial do Keycloak (versão estável)
# Usa a imagem oficial do Keycloak
FROM quay.io/keycloak/keycloak:26.2.5

# Define variáveis de ambiente básicas para Keycloak
ENV KC_DB=h2 \
    KC_HTTP_ENABLED=true \
    KC_LOG_LEVEL=INFO \
    KEYCLOAK_ADMIN=admin \
    KEYCLOAK_ADMIN_PASSWORD=admin

# Expõe a porta padrão do Keycloak
EXPOSE 8080

# Comando para iniciar o Keycloak em modo de desenvolvimento
ENTRYPOINT ["kc.sh", "start-dev"]
