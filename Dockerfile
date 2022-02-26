# Container base image
FROM nginx:alpine

# Copy source files into container
COPY src/html /usr/share/nginx/html

# Port to be exposed
#   Here for documentation only
# EXPOSE  80

# Run nginx
#   The base image will do this automatically
# CMD ["nginx", "-g", "daemon off;"]