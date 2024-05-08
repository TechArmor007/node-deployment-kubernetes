# Build Stage
FROM node:14 AS build

# Working Directory
WORKDIR /code

# Copy the application source code
COPY * ./

# Install node modules and build dependencies
RUN npm install

# Start the building process
#RUN npm run build


# Prod Stage
FROM node:14-slim

# Working Directory
WORKDIR /code

# Copy built node modules and build artifacts from the build stage
COPY --from=build /code .

# Expose the port the app runs on
EXPOSE 3000

# Command to run the application
CMD npm start
