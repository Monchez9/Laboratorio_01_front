# Etapa 1: build de Vite/React
FROM node:22 AS build
WORKDIR /app
COPY package*.json ./
RUN npm ci
COPY . .
# Usa .env.development que creaste en el paso 1
RUN npm run build

# Etapa 2: servir estáticos con Nginx
FROM nginx:stable-alpine
# Limpia el default y usa nuestra config
RUN rm /etc/nginx/conf.d/default.conf
COPY nginx.conf /etc/nginx/conf.d/default.conf
# Copia el build
COPY --from=build /app/dist /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
