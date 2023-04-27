FROM node:16.3.0-alpine as build-stage

WORKDIR /usr/src/app

EXPOSE 5000

# Dockerfile run in the root folder of the repository
COPY . .

RUN npm install
RUN  REACT_APP_BACKEND_URL=http://localhost:8080 npm run build
 
FROM node:16.3.0-alpine

WORKDIR /usr/src/app

RUN  npm install -g serve
COPY --from=build-stage /usr/src/app/build /usr/src/app/build

CMD ["serve", "-s", "-l", "5000", "build"]
