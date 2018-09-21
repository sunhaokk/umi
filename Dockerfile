# Version 1.2

FROM node:8.9-alpine
ENV NODE_ENV production
ADD . /code
WORKDIR /code
# COPY ["package.json", "package-lock.json*", "npm-shrinkwrap.json*", "./"]
RUN npm install yarn -g
RUN yarn global add umi
EXPOSE 8000
CMD umi dev
ENV version=1