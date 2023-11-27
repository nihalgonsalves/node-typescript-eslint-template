FROM node:20-slim as builder

WORKDIR /usr/src/app

COPY ./package.json ./
COPY ./yarn.lock ./
COPY ./.yarnrc.yml ./

RUN corepack enable
RUN yarn install --immutable

COPY tsconfig.json .
COPY src/ ./src/

RUN yarn build

FROM node:20-slim

WORKDIR /usr/src/app

COPY ./package.json ./
COPY ./yarn.lock ./
COPY ./.yarnrc.yml ./

RUN corepack enable
RUN yarn install --immutable

COPY --from=builder /usr/src/app/build/ ./build/

ENV NODE_ENV=production

EXPOSE 4000

CMD ["yarn", "start"]
