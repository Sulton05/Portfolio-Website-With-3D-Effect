# Rasmiy kichik nginx versiyasidan foydalanamiz
FROM nginx:alpine

# Bizning fayllarimizni nginx serverining "root" papkasiga nusxalaymiz
COPY . /usr/share/nginx/html


FROM node

RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app

COPY package.json /usr/src/app/

RUN npm install

COPY . /usr/src/app

EXPOSE 3000

CMD [ "npm", "start" ]