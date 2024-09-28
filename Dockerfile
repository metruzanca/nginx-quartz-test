FROM nginx:alpine
COPY nginx.conf /etc/nginx/nginx.conf
COPY .htpasswd /etc/nginx/.htpasswd
COPY www/ /usr/share/nginx/html/www/
EXPOSE 80
