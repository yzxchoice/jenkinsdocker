FROM node:10-alpine
LABEL author="mic"

ENV NODE_ENV=development
ADD . /app/
WORKDIR /app

RUN npm i --production --registry=http://10.63.5.12:8081/repository/npmgroup/

CMD ["npm", "start"]
