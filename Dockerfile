FROM node:slim

# Step 1 - Add container working directory
WORKDIR /app

# Step 2 - Copy npm dependencies
COPY package*.json /app/package.json
COPY package-lock.json /app/package-lock.json

# Step 3 - Install dependencies
RUN npm install

# Copy app source code
COPY . .

#Expose port and start application
EXPOSE 8080
CMD [ "npm", "start" ]