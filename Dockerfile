FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME gha_demo
ENV MONGODB_CLUSTER_ADDRESS cluster0.9fni3bp.mongodb.net
ENV MONGODB_USERNAME jefferarellano
ENV MONGODB_PASSWORD 7KhlbSrIJZN4tOGE

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]