FROM node:14-alpine3.12

RUN apk add --no-cache bash curl && \
    curl https://raw.githubusercontent.com/eficode/wait-for/v2.1.3/wait-for --output /usr/bin/wait-for && \
    chmod +x /usr/bin/wait-for

RUN npm i -g @nestjs/cli@7.4.1

USER node

WORKDIR /home/node/app
