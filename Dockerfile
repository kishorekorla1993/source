FROM nginx

# Remove default nginx files
RUN rm -rf /usr/share/nginx/html/*

# Copy project files to nginx directory
COPY project.html  /usr/share/nginx/html/

# Expose port 80
EXPOSE 80
