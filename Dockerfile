FROM node:alpine3.16 as nodework
WORKDIR /testbuildapp
COPY package.json .
RUN npm install
COPY . .
RUN npm run build
CMD npm run start:prod
