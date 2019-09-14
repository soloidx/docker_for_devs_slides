#!/usr/bin/env bash


#START OMIT
# iniciar un servidor nginx
docker run nginx:alpine

# iniciar un servidor nginx mapeando el puerto 80
docker run -p 8081:80 nginx:alpine

# iniciar un servidor nginx conectando un folder local al contenedor
docker run -p 8081:80 -v "$PWD"/scripts/ex02/html:/usr/share/nginx/html nginx:alpine

docker run --name my-nginx -d -p 8082:80 -v "$PWD"/scripts/ex02/html:/usr/share/nginx/html nginx:alpine

#END OMIT
