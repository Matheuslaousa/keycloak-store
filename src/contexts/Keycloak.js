// contexts/Keycloak.js

import Keycloak from 'keycloak-js';

// Cria uma instância do Keycloak com as configurações do seu servidor
const keycloak = new Keycloak({
  url: 'http://localhost:8080',    // Endereço do servidor Keycloak
  realm: 'keycloak-store',          
  clientId: 'keycloak-store',       
});

export default keycloak;
