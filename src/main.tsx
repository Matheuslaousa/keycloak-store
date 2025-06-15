import React from 'react';
import ReactDOM from 'react-dom/client';
import App from './App';
import { CartProvider } from './contexts/CartContext';
import keycloak from './contexts/Keycloak';

keycloak.init({ onLoad: 'login-required' }).then(authenticated => {
  if (!authenticated) {
    console.warn('Usuário não autenticado - recarregando...');
    window.location.reload();
  } else {
    console.log('Usuário autenticado');

    ReactDOM.createRoot(document.getElementById('root')).render(
      <React.StrictMode>
        <CartProvider>
          <App />
        </CartProvider>
      </React.StrictMode>
    );
  }
}).catch(err => {
  console.error('Falha na inicialização do Keycloak:', err);
});
