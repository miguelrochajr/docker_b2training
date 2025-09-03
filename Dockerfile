# BUILD phase
FROM node:16-alpine AS builder

WORKDIR '/app'
COPY package.json .
RUN npm install
COPY . .
RUN npm run build

# the final result is a folder with a JS file and an HTML one
FROM nginx
EXPOSE 80
COPY --from=builder /app/build /usr/share/nginx/html






