import React from 'react';
import './index.css';
import App from './components/App';
import { createRoot } from 'react-dom/client';


const root = document.getElementById('root');


createRoot(root!).render(
    <React.StrictMode>
        <App />
    </React.StrictMode>
);
  
