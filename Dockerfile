FROM node:25

RUN apt-get update && apt-get install -y --no-install-recommends \
    dumb-init

EXPOSE 3000
WORKDIR /app

COPY . /app

RUN npm ci

ENTRYPOINT ["/usr/bin/dumb-init", "--"]
CMD ["node", "/app/src/server.js"]
