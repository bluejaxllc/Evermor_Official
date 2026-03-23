# Use an official lightweight Nginx image
FROM nginx:alpine

# Copy static assets into nginx default html folder
COPY . /usr/share/nginx/html

# Expose port 80 (required by Railway for web services)
EXPOSE 80

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]
