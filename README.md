# Docker Webserver
Custom docker webserver to be used in Kubernetes deployment testing

# Products used
 - Docker
 - NGINX Webserver
 - Ubuntu 20.04

# Prebuilt Image
You can find a prebuilt image at on [docker.io/r/TheQuib/docker-webserver](http://docker.io/r/thequib/docker-webserver)

# Build Docker Container
 - Clone the repository
 - Run the command `sudo docker build -t webserver:latest .`
   - This will create a container on the local machine called `webserver` with the tag `latest`
   - Just as if downloaded from a Docker repository such as Dockerhub
 - Now that the container is built, run the command `sudo docker run -d webserver:latest`
   - This will run the container is 'detached' mode, in the background
 - Alternatively, the included `docker-compose.yml` file can be used if you prefer by running `sudo docker-compose up -d`