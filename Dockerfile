FROM nginx:alpine

# Create necessary directories and set permissions
RUN mkdir -p /var/cache/nginx /var/run /var/log/nginx /usr/share/nginx/html \
    && chmod -R g+rwX /var/cache/nginx /var/run /var/log/nginx /var/log/nginx /usr/share/nginx/html \
    && chgrp -R 0 /var/cache/nginx /var/run /var/log/nginx /usr/share/nginx/html

# Copy nginx configuration
COPY nginx.conf /etc/nginx/nginx.conf

# Copy the HTML file
COPY index.html /usr/share/nginx/html/index.html

EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]
