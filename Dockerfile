FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME gh_demo-jmlfv
ENV MONGODB_CLUSTER_ADDRESS cluster0.9fni3bp.mongodb.net
ENV MONGODB_USERNAME jefferarellano
ENV MONGODB_PASSWORD leemE8LqpDVTkjdP

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]