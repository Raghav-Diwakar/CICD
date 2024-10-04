# Use the official Apache image from Docker Hub
FROM httpd:2.4

# Install dependencies
RUN apt-get update && \
    apt-get install -y docker.io && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Set the working directory
WORKDIR /usr/local/apache2/htdocs/

# Copy your website content into the container
COPY . .

# Expose port 80
EXPOSE 80

# Start the Apache server
CMD ["httpd", "-D", "FOREGROUND"]
