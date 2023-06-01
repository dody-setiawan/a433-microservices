FROM node:18-alpine as base
WORKDIR /src
COPY package*.json ./
 
FROM base as production
ENV NODE_ENV=production
RUN npm ci
COPY ./*.js ./
COPY ./.env ./
CMD ["npm", "start"]
 
FROM base as dev
ENV NODE_ENV=development
RUN npm install
COPY ./*.js ./
COPY ./.env ./
CMD ["npm", "dev"]