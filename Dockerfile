FROM nginx
COPY nginx.conf /etc/nginx/nginx.conf
COPY .htpasswd /etc/apache2/.htpasswd
