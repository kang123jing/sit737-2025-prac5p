FROM node:18
WORKDIR /app
COPY package*.json ./
RUN npm install
RUN chmod +x app.js
COPY . .
EXPOSE 3000
CMD ["node", "app.js"]