FROM nginx:alpine
COPY index.html /usr/share/nginx/html/index.html

RUN chmod g+rwx /var/cache/nginx /var/run /var/log/nginx
RUN chgrp -R root /var/cache/nginx

# Run nginx as non-root user
USER nginx
