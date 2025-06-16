# Usa imagem oficial do Keycloak (versão estável)
FROM quay.io/keycloak/keycloak:26.2.5

# Habilita o modo "development" e desativa a necessidade de login no admin CLI
ENV KC_DB="h2" \
    KC_HTTP_ENABLED="true" \
    KC_LOG_LEVEL="INFO" \
    KEYCLOAK_ADMIN="admin" \
    KEYCLOAK_ADMIN_PASSWORD="admin123"

# Expõe a porta padrão do Keycloak
EXPOSE 8080

# Comando para iniciar o Keycloak no modo dev com o banco interno (h2)
ENTRYPOINT ["./kc.sh", "start-dev"]
