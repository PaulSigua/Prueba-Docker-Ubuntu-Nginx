# Creacion de una Imagen que arranca desde Ubuntu y se alza en un servidor de Nginx

### Nombre: Paul Mateo Sigua Calle

### Asunto: DockerFile Prueba

### Materia: SISTEMAS DISTRIBUIDOS

# Aplicacion FRONTED: https://github.com/PaulSigua/Angular-Docker.git

# Instalacion y ejecucion de la Imagen

1. Instalacion

Dentro de CMD ingresamos a la carpeta e introducimos el siguiente comando docker pull mateo2021/pruebapp:latest

2. Ejecucion

Dentro de CMD ingresamos el siguiente comando docker run -t -p 80:80 mateo2021/pruebapp:latest

# Archivos utilizados

1. Creacion del Fronted utilizando Angular

2. Creacion del Archivo Dockerfile

3. Creacion del archivo nginx.conf

Estos archivos son necesarios para que la imagen funcione.

Primero se creo el fronted utilizando angular y se establecio un titulo en el archivo HTML.

Segundo se creo el archivo dockerfile donde se realiza toda la configuracion para la creacion de la imagen.

Tercero se crea el archivo nginx.conf donde se configura el servidor.
