FROM node

WORKDIR /usr/liridon-devops-training/

COPY package*.json /usr/liridon-devops-training/

RUN npm install

COPY . /usr/liridon-devops-training/

RUN npm run build

COPY . /usr/liridon-devops-training/

EXPOSE 3000

ENTRYPOINT [ "npm","run","start" ]