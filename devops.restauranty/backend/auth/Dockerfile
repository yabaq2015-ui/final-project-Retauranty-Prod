# Use official lightweight Node.js image
FROM node:18-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy package files first to leverage Docker cache for dependencies
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the port the microservice runs on (e.g., 3001 for auth)
EXPOSE 3001

# Command to start the application
CMD ["npm", "start"]
