#FROM node:16-alpine
#RUN mkdir -p /app
#WORKDIR /app
#COPY package.json /app
#RUN yarn install
#COPY . /app
#RUN yarn build
#EXPOSE 3000
#CMD [ "yarn", "start" ]

# Super pesada +1GB
# Use the official Node.js image as the base image
FROM node:18-alpine

# Set the working directory in the container
WORKDIR /app

# Copy the application files into the working directory
COPY . /app

# Install the application dependencies
RUN npm install

# Build the React application
RUN npm run build

# Expose port 3000
EXPOSE 3000

# Define the entry point for the container
CMD ["npm", "start"]
