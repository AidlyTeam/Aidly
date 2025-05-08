# Base image
FROM node:20.13.1-alpine

# Set the working directory
WORKDIR /usr/src/app

# Install additional dependencies
RUN apk add --no-cache bash

# Copy package.json and package-lock.json to install dependencies
COPY package*.json ./

# Install all dependencies including devDependencies
ENV NODE_ENV=development
RUN npm install

# Copy the rest of the application files
COPY . .

# Expose the application port
EXPOSE 8082

# Use nodemon for development
CMD ["npm", "run", "dev"]
