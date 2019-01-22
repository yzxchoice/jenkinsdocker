FROM node:10-alpine
LABEL author="mic"

COPY ./package.json /code/package.json
WORKDIR /code

RUN npm i --registry=http://10.63.5.12:8081/repository/npmgroup/
COPY . /code

CMD npm start
