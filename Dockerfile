FROM node:10-alpine
LABEL author="mic"

COPY . /app
WORKDIR /app
RUN npm i --registry=http://http://10.63.5.12:8081/repository/npmgroup/

CMD npm start
