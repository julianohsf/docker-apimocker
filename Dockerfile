FROM node:8
LABEL maintainer="https://github.com/julianohsf"

WORKDIR /apimocker
RUN ["mkdir", "-p", "/apimocker/conf.d", "/apimocker/responses"], 
RUN ["npm", "install", "-g", "apimocker"]

CMD ["apimocker", "-c", "/apimocker/conf.d/config.json", "-p", "5050"]