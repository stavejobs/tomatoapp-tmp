FROM node:24-alpine3.23

WORKDIR /tmp

COPY index.js package.json ./

EXPOSE 7860

RUN apk update && apk add --no-cache bash openssl curl &&\
    chmod +x index.js &&\
    npm install

CMD ["node", "index.js"]
