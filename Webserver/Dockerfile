FROM node:12-alpine
RUN yarn -y add http-server
COPY index.html /var/www/html/
CMD ["http-server"]
EXPOSE 80