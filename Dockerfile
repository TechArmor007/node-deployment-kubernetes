# Build Stage
FROM node:14 AS build

# Set the working directory in the container
WORKDIR /code

# Copy the application source code
COPY * ./

# Install node modules and build dependencies
RUN npm install

# Start the building process
#RUN npm run build


# Prod Stage
FROM node:14-slim

# Set the working directory in the container
WORKDIR /code

# Copy built node modules and build artifacts from the builder stage
COPY --from=build /code .

# Expose the port the app runs on
EXPOSE 3000

# Define the command to run the application
#CMD ["node", "index.js"]
CMD npm start
