# Use an official nginx image as a base
FROM nginx:alpine

# Copy the index.html file into the container
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80
EXPOSE 80
