# Base image
FROM node:18-slim

# set up working directory
WORKDIR /app

#copy package.json to the working directory
COPY package.json .

# install project dependencies
RUN npm install -f

# copy rest of the project files into container
COPY . .

# EXPOSE 5001
EXPOSE 5001

# command to start application inside the container
CMD ["npm", "start"]