FROM node:lts

WORKDIR /app/

USER root

COPY package*.json ./
RUN npm install --no-optional --quiet 1>/dev/null

COPY . .

RUN apt clean && apt update && apt install -y sqlite3
# RUN cat server/init.sql | sqlite3 server/db.sqlite

ENV PORT=8006
EXPOSE $PORT
CMD ["node", "server/index.js", "2>&1"]