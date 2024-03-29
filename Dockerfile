FROM node
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY package.json /usr/src/app/
RUN npm install
# Bundle app source
COPY . /usr/src/app
CMD [ "bin/hubot", "-a", "slack"]
