# Best Practice 1: Use a small base image to reduce attack surface and image size
FROM nginx:alpine

# Best Practice 2: Clean up unnecessary default files
RUN rm -rf /usr/share/nginx/html/*

# Best Practice 3: Copy only necessary application files into the container
COPY index.html script.js styles.css /usr/share/nginx/html/

# Expose port 80 where Nginx serves the app
EXPOSE 80

# Command to run Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
