# Use the official lightweight Nginx image
FROM nginx:alpine

# Copy all files from project to the container
COPY . /usr/share/nginx/html/

# Expose port 80
EXPOSE 80


