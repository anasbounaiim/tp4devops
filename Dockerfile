# Utilisation de l'image Nginx
FROM nginx:alpine

# Suppression de la page d'accueil par défaut
RUN rm -rf /usr/share/nginx/html/*

# Ajout de notre page index.html
COPY index.html /usr/share/nginx/html/

# Exposition du port 80
EXPOSE 80

# Commande pour démarrer Nginx
CMD ["nginx", "-g", "daemon off;"]
