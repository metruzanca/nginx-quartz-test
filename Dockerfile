# Start with the base Caddy image
FROM caddy:builder AS builder

# Install necessary build tools
RUN apk add --no-cache git go

# Set the Caddy version and plugins you want to include
ENV CADDY_VERSION v2.7.4
ENV PLUGINS "authp"

# Fetch and build Caddy with the specified plugins
RUN xcaddy build --with ${PLUGINS}

# Create the final image using the Caddy built with plugins
FROM caddy:latest

# Copy the built Caddy binary from the builder stage
COPY --from=builder /usr/bin/caddy /usr/bin/caddy

# Copy your Caddyfile and static files
COPY Caddyfile /etc/caddy/Caddyfile
COPY www/ /usr/share/caddy/www/

# Expose ports
EXPOSE 80 443
