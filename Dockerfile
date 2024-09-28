FROM caddy:alpine

COPY Caddyfile /etc/caddy/Caddyfile
COPY www/ /usr/share/caddy/www/

EXPOSE 80 443
