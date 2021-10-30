FROM node:lts


RUN apt-get update && apt-get install -y \
    git 

EXPOSE 3000
