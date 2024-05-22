FROM ubuntu:latest AS node

RUN apt update

FROM node:latest AS build
WORKDIR /prueba/frontend

COPY frontend/ /prueba/frontend/

RUN npm cache clean --force
COPY . .
RUN npm install
RUN npm run build --prod

# Etapa 2: Servir la aplicación con Nginx
FROM nginx:latest AS ngi
COPY --from=build /prueba/frontend/dist/frontend/browser /usr/share/nginx/html
COPY /nginx.conf /etc/nginx/conf.d/default.conf
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
