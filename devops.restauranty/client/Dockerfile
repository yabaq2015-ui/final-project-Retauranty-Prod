# Stage 1: Build the React application
FROM node:18-alpine AS builder
WORKDIR /app

# Accept build argument for the server URL
ARG REACT_APP_SERVER_URL="http://restauranty.prod"
ENV REACT_APP_SERVER_URL=$REACT_APP_SERVER_URL

COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build

# Stage 2: Serve the app using Nginx
FROM nginx:alpine
COPY --from=builder /app/build /usr/share/nginx/html
COPY nginx.conf /etc/nginx/conf.d/default.conf
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
