FROM node:18.17.0-alpine3.18 AS development

WORKDIR /usr/src/app

COPY package*.json .

RUN npm install

COPY . .

RUN npm run build

# ---- Production Stage ----
FROM node:18.17.0-alpine3.18 AS production

WORKDIR /usr/src/app

COPY package*.json .

RUN npm install --only=production

COPY --from=development /usr/src/app/dist ./dist

EXPOSE ${PORT}

CMD ["node", "dist/main"]
