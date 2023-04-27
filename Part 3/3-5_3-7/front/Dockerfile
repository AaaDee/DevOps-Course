FROM node:16.3.0-alpine

WORKDIR /usr/src/app

EXPOSE 5000

# Dockerfile run in the root folder of the repository
COPY . .

RUN npm install && \
  npm install -g serve && \
  REACT_APP_BACKEND_URL=http://localhost:8080 npm run build && \
  adduser -D appuser && \
  rm -rf node_modules

USER appuser

CMD ["serve", "-s", "-l", "5000", "build"]
