import Keycloak from 'keycloak-js';

const keycloak = new Keycloak({
  url: 'http://localhost:8080',
  realm: 'keycloak-store',
  clientId: 'keycloak-store',
});

export default keycloak;
