FROM node:9
USER node
RUN cd && mkdir .npm-global
ENV PATH=/home/node/.npm-global/bin:$PATH
ENV NPM_CONFIG_PREFIX=/home/node/.npm-global
RUN npm install -g scuttlebot
USER root
