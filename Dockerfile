FROM node:18-alpine
WORKDIR /src
COPY package*.json ./
ENV NODE_ENV=production
RUN npm ci
COPY ./*.js ./
COPY ./.env ./
CMD ["npm", "run start"]
