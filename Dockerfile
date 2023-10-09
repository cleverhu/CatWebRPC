# Dockerfile
FROM dockerproxy.com/library/node:14

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
COPY package*.json ./

# Set npm registry
# RUN npm config set registry https://registry.npm.taobao.org
RUN npm install

# Bundle app source
COPY . .

# Your app binds to port 5000 so you'll use the EXPOSE instruction to have it mapped by the docker daemon
EXPOSE 5000

CMD [ "node", "CatServer/catserver.js" ]
