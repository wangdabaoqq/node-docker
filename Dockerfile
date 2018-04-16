FROM node:6.12.7-wheezy

WORKDIR /nodeExpress

RUN npm install -g forever

COPY ./package.json /nodeExpress/

RUN npm install

COPY . /nodeExpress/
 
EXPOSE 3000

CMD forever bin/www 