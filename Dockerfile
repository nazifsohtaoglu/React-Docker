FROM node:lts-alpine3.14 as build

WORKDIR /src

COPY package.json package.json
COPY package-lock.json package-lock.json

RUN npm ci --production

COPY . .

RUN npm run build

#2


FROM nginx:alpine as prod

COPY --from=build /src/build /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g","daemon off;"]
