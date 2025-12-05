FROM node:25


EXPOSE 3000
WORKDIR /app

COPY . /app

RUN npm install --ci

CMD ["node", "/app/src/server.js"]
