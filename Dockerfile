# Use the latest node docker image
FROM node:latest

# Set a sane workdir
WORKDIR /usr/src/app

# Copy package files only, speeds up builds by caching previous build stages
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the app
COPY . .

# Specify startup command
CMD [ "node", "start.js" ]
