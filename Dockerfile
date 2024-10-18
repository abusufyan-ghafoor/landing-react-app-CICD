FROM node:16-alpine AS build
WORKDIR /app
COPY package*.json ./
RUN npm set timeout 600
RUN npm install
COPY . . 
EXPOSE 3000
#npmstart
CMD ["npm", "start"]
