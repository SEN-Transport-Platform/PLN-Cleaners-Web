# Base image for Nginx server
FROM nginx:latest

# Set working directory
WORKDIR /usr/share/nginx/html

# Copy website files
COPY . .

# Expose port 8080, required by Google Cloud Run
EXPOSE 8080

# Configure Nginx to serve static content
COPY nginx.conf /etc/nginx/nginx.conf

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]