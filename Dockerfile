FROM node:22-slim as builder

WORKDIR /usr/src/app

COPY ./package.json ./
COPY ./yarn.lock ./
COPY ./.yarnrc.yml ./

RUN corepack enable
RUN --mount=type=cache,target=/root/.yarn YARN_CACHE_FOLDER=/root/.yarn yarn install --immutable

COPY tsconfig.json .
COPY src/ ./src/

RUN yarn build

FROM node:22-slim

WORKDIR /usr/src/app

COPY ./package.json ./
COPY ./yarn.lock ./
COPY ./.yarnrc.yml ./

RUN corepack enable
# hadolint ignore=DL3060
RUN --mount=type=cache,target=/root/.yarn YARN_CACHE_FOLDER=/root/.yarn yarn install --immutable

COPY --from=builder /usr/src/app/build/ ./build/

ENV NODE_ENV=production

EXPOSE 4000

CMD ["yarn", "start"]
