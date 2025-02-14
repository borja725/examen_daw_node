FROM node:18

RUN mkdir -p /opt/app

WORKDIR /opt/app

COPY package-lock.json app/package.json app/server.js .

RUN npm install

EXPOSE 3000

CMD ["npm", "run", "start"]

