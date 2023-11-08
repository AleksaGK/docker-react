# Use the official Node.js 16 image
FROM node:16

# Set the working directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install app dependencies
RUN npm install

# Copy the app files
COPY . .

# Expose port 3000
EXPOSE 3000

# Run the app
CMD ["npm", "start"]
