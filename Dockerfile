
# Use an official Node.js runtime as a parent image
FROM node:latest
# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the package.json and package-lock.json files to the working directory

COPY package*.json ./
# Copy the content of the local "cicdpipeline" folder to the working directory
COPY ../.. .

RUN npm install
# Make port 3000 available to the world outside this container
EXPOSE 3000
# Run the app when the container launches
CMD ["npm", "start"]