 # Utilise l'image officielle de Nginx
FROM nginx:latest 

# Copie les fichiers du site dans le dossier HTML de Nginx
COPY ./mon-site-web /usr/share/nginx/html 

# Expose le port 80
EXPOSE 80 

version: '3'
services:
  web:
    build: .
    ports:
      - "3000:3000"
    depends_on:
      - mongo
  mongo:
    image: mongo
    ports:
      - "27017:27017"



