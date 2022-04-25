# Container base image
FROM nginx:alpine

# Copy source files into container
COPY src/html /usr/share/nginx/html

# Connect to GitHub repository
LABEL org.opencontainers.image.source https://github.com/TheQuib/nginx-docker