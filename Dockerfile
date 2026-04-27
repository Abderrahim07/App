FROM nginx:alpine

# supprimer la page nginx par défaut
RUN rm -rf /usr/share/nginx/html/*

# copier ton site
COPY index_generic.html /usr/share/nginx/html/index.html

# exposer le port web
EXPOSE 80

# lancer nginx
CMD ["nginx", "-g", "daemon off;"]
