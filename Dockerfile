# Используем образ дистрибутив линукс Alpine
FROM node:20

# Указываем нашу рабочую директорию
WORKDIR /app

# Копируем package.json и package-lock.json внутрь контейнера
COPY package*.json ./

# Устанавливаем зависимости
RUN npm install

# Копируем оставшееся приложение в контейнер
COPY . .

# Генерируем Prisma client
RUN npx prisma generate

# Копируем Prisma schema и URL базы данных в контейнер
COPY prisma/schema.prisma ./prisma/

# Открываем порт 3000 в нашем контейнере
EXPOSE 3000

# Запускаем сервер
CMD [ "npm", "start" ]