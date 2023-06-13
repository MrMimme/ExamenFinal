# Selecciona la imagen base 
FROM alpine:latest

# Define el autor/mantenedor de la imagen 
LABEL maintainer="pablo <polivaress@miumg.edu.gt>"

# Ejecuta comandos en el contenedor
RUN apk update && apk upgrade && apk add --no-cache nginx

# Copia archivos locales al contenedor 
COPY ./index.html /usr/share/nginx/html/

# Expone el puerto 80 para el trafico web 
EXPOSE 80

# Define el comando por defecto cuando se inicie el contenedor ç
CMD ["nginx", "-g", "daemon off;"]