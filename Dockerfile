# Use a lightweight Node.js runtime environment
FROM node:20-alpine

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package configurations and install production packages
COPY package*.json ./
RUN npm install --only=production

# Copy the server script into the container
COPY server.js ./

# Inform Docker that the container listens on port 3000 at runtime
EXPOSE 3000

# Specify the command to start the app
CMD [ "npm", "start" ]
