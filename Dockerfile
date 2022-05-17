FROM node:16.12.0-buster

WORKDIR /app/

USER root

COPY package*.json ./
RUN npm install --no-optional --quiet 1>/dev/null

COPY . .

ENV PORT=8006
EXPOSE $PORT
CMD ["sh", "run"]