FROM node:16.18-alpine

RUN yarn global add @nestjs/cli

WORKDIR /api
COPY package.json yarn.lock /api
RUN yarn install

COPY . .

CMD ["yarn", "start:dev"]
