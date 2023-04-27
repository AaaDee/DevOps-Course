FROM node:16.3.0-alpine AS test-stage

WORKDIR /usr/src/app

COPY . .

RUN npm ci

ENV CI=true

#RUN npm test

# build

FROM node:16.3.0-alpine AS build-stage

WORKDIR /usr/src/app

COPY --from=test-stage /usr/src/app .

ENV REACT_APP_BACKEND_URL=http://localhost:8080/api/

RUN npm run build

# serve

RUN npm install -g serve

EXPOSE 3000

# Remove node modules
RUN rm -rf node_modules

# Update user
RUN adduser -D appuser
USER appuser


CMD ["serve", "-s", "-l", "3000", "build"]