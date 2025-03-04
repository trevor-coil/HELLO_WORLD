# Use a lightweight Nginx image as the base
FROM nginx:alpine

# Remove the default index.html
RUN rm -f /usr/share/nginx/html/index.html

# Copy our custom index.html into the container
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80 for web traffic
EXPOSE 80

# Run Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
