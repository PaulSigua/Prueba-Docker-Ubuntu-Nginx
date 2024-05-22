# Configuracion de la imagen Ubuntu
FROM ubuntu:latest AS node

RUN apt update

# Configuracion del nodo
FROM node:latest AS build
WORKDIR /prueba/frontend

COPY frontend/ /prueba/frontend/

RUN npm cache clean --force
COPY . .
RUN npm install
RUN npm run build --prod

#Configuracion del servidor
FROM nginx:latest AS ngi
COPY --from=build /prueba/frontend/dist/frontend/browser /usr/share/nginx/html
COPY /nginx.conf /etc/nginx/conf.d/default.conf

#Se expone el servidor
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]