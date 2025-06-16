import React from 'react';
import ReactDOM from 'react-dom/client';
import App from './App';
import { CartProvider } from './contexts/CartContext';
import keycloak from './contexts/keycloak'; // ajuste o caminho se precisar

keycloak.init({ onLoad: 'login-required' }).then((authenticated) => {
  if (!authenticated) {
    window.location.reload();
  } else {
    ReactDOM.createRoot(document.getElementById('root')).render(
      <React.StrictMode>
        <CartProvider>
          <App />
        </CartProvider>
      </React.StrictMode>
    );
  }
}).catch(() => {
  console.error('Erro ao inicializar Keycloak');
});
