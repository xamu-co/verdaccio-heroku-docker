FROM node:alpine

RUN yarn add verdaccio@5 verdaccio-github-oauth-ui@3

COPY config.yaml .

CMD yarn verdaccio --config config.yaml --listen http://0.0.0.0:$PORT