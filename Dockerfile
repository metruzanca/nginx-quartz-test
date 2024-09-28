FROM nginx:alpine
COPY nginx.conf /etc/nginx/nginx.conf
COPY .htpasswd /etc/nginx/.htpasswd
COPY static/ /usr/share/nginx/html/static/
