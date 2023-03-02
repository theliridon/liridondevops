FROM node

WORKDIR /usr/liridon-devops-training/liridon-nextjs-app

COPY package*.json /usr/liridon-devops-training/liridon-nextjs-app

RUN npm install

COPY . /usr/liridon-devops-training/liridon-nextjs-app

RUN npm run build

COPY . /usr/liridon-devops-training/liridon-nextjs-app  

EXPOSE 3000

ENTRYPOINT [ "npm","run","start" ]