FROM node:10-alpine
LABEL author="mic"

# Create app directory
RUN mkdir -p /code
WORKDIR /code
# Bundle app source
COPY . /code

RUN npm i --registry=http://10.63.5.12:8081/repository/npmgroup/

CMD npm start
