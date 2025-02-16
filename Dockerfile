# Use the official Node.js image
FROM node:20

# Set the working directory inside the container
WORKDIR /DocPro

# Copy package.json and package-lock.json first for better caching
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the port that the app runs on
EXPOSE 3000

# Command to run the application
CMD ["npm", "run", "dev"]