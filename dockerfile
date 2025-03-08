# base image
FROM node:20

# from base image we have to create app directory where app will run inside dockor.
WORKDIR /app

# Install app dependencies.
COPY package*.json ./
# thsi means we are copy all data from packagejson file to ./ directory inside docker.

# now after copy we need to run npm install.
RUN npm install

# after this we need to copy all the source code directory.
COPY . .
# current directory to current working directory.

EXPOSE 8090

# executable command
CMD [ "npm", "start" ]