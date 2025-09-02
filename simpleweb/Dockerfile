# Specify the base image
FROM node:14-alpine

WORKDIR /usr/app

# Copy ONLY the package.json
COPY package*.json ./

# Install some dependencies
RUN npm install

COPY ./ ./

# Default comman
CMD ["npm", "start"]