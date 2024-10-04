# Use the official Apache image from Docker Hub
FROM httpd:2.4

# Set the working directory
WORKDIR /usr/local/apache2/htdocs/

# Copy your website content into the container
COPY . .

# Expose port 80
EXPOSE 80

# Start the Apache server
CMD ["httpd", "-D", "FOREGROUND"]
