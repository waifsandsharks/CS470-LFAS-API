# using Node v10
FROM node:10

# create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json /usr/src/app


RUN npm install

# If you are building your code for production
# RUN npm ci --only=production

COPY . .

EXPOSE 3000

# CMD [ "node", "server/server.js" ] 

CMD npm run start