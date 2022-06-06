FROM node:16-slim

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
COPY package*.json ./

RUN npm install
RUN npm i prettier jest

# Bundle app source
COPY . .

# Run the app on container startup.
CMD [ "npm", "start" ]