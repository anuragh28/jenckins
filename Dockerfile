# Dockerfile

# Use the official Node.js image from Docker Hub
FROM node:16-alpine

# Set the working directory in the Docker container
WORKDIR /app

# Copy the package.json and package-lock.json files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the port that your application will run on
EXPOSE 3000

# Command to run the application
CMD ["npm", "start"]
