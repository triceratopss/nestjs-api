FROM node:18.12-alpine

WORKDIR /api
COPY package.json yarn.lock /api
RUN yarn install

COPY . .

CMD ["yarn", "start:dev"]
