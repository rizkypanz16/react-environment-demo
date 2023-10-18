# Use an official Node.js runtime as a parent image
#FROM node:18.18 as build
FROM node:18.18

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code to the working directory
COPY . .

# Build the React application
#RUN npm run build

# Use NGINX as a lightweight web server to serve the React application
#FROM nginx:alpine

# Copy the built React app from the build container to the NGINX web root
#COPY --from=build /app/build /usr/share/nginx/html

# Expose port 80
#EXPOSE 80
EXPOSE 3000

# Start NGINX when the container starts
#CMD ["nginx", "-g", "daemon off;"]
CMD ["npm", "run", "start"]
