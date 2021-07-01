FROM verdaccio/verdaccio:4

USER root

ENV NODE_ENV=production

RUN yarn && yarn add verdaccio-github-oauth-ui@2.4.0

COPY ./config.yaml /verdaccio/conf

USER verdaccio
