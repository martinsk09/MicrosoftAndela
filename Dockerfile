FROM node:carbon

# Create app directory
WORKDIR /Users/macbook/coder/microsoft_andela


COPY package*.json ./

RUN npm install

# Bundle app source
COPY . .

EXPOSE 3000
CMD [ "npm", "start" ]