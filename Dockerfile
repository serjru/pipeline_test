FROM nginx:alpine

# Create a non-root user
RUN adduser -D myuser

# Change ownership of the necessary directories
RUN chown -R myuser:myuser /usr/share/nginx/html /var/cache/nginx /var/run /var/log/nginx

# Switch to the non-root user
USER myuser

COPY index.html /usr/share/nginx/html/index.html

EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]
