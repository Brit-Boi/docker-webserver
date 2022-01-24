# Docker Webserver
Custom docker webserver to be used in Kubernetes deployment testing

# Products used
 - Docker
 - NGINX Webserver

# Build Docker Container
 - Clone the repository
 - `cd` to `Webserver`
 - Run the command `docker build -t webserver .`
   - This will create a container on the local machine called `webserver`
   - Just as if downloaded from a Docker repository such as Dockerhub
 - Now that the container is built, run the command `docker run -d webserver`
   - This will run the container is 'detached' mode, in the background