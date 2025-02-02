FROM node:latest

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY prisma ./prisma

RUN npx prisma generate

COPY . .

EXPOSE 3000

CMD ["npm","run","start:dev"]



