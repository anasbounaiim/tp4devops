# Use the official lightweight Nginx image
FROM nginx:alpine

# Remove default Nginx welcome page
RUN rm -rf /usr/share/nginx/html/*

# Copy all files from project to the container
COPY . /usr/share/nginx/html/

# Fix permissions (avoid permission errors)
RUN chmod -R 755 /usr/share/nginx/html

# (Optional) Use a non-root user for security
RUN adduser -D -g 'www' www && chown -R www:www /usr/share/nginx/html
USER www

# Expose port 80
EXPOSE 80

# Start Nginx in foreground mode
CMD ["nginx", "-g", "daemon off;"]
