# build stage
FROM node:lts-alpine as build-stage
WORKDIR /app/
COPY package*.json /app/
RUN npm install --quiet --no-optional 1>/dev/null

# production stage
FROM nginx:stable-alpine as production-stage
COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY --from=build-stage /app /usr/share/nginx/html
COPY . /usr/share/nginx/html
EXPOSE 8080
CMD ["nginx", "-g", "daemon off;"]