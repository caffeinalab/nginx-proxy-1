FROM jwilder/nginx-proxy:latest
LABEL maintainer="Caffeina dev@caffeina.com"

COPY nginx.tmpl /app/nginx.tmpl