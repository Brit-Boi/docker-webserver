FROM node:12-alpine
RUN apk add --no-cache add http-server
COPY index.html /var/www/html/
RUN yarn install --production
CMD ["http-server"]
EXPOSE 80