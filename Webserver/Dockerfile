FROM node:12-alpine
RUN apk add --no-cache add httpd
COPY index.html /var/www/html/
RUN yarn install --production
CMD ["http-server"]
EXPOSE 80