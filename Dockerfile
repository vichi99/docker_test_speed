FROM node:14-alpine


WORKDIR /app/
COPY ./package.json \
    ./yarn.lock \
    ./tsconfig.json \
    ./
COPY ./src  /app/src
COPY ./public  /app/public

RUN yarn install

ADD . /app

CMD yarn start
