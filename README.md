# Threads API
Репозиторий содержит серверную часть приложения Threads.

## Стек технологий
- Express
- Prisma ORM
- Prisma Studio
- База данных MongoDB
- Docker / Docker Compose

## Запуск проекта

1. Склонировать репозиторий с сервером

```
https://github.com/veronica-ivanova/express-threads-api.git
```

2. Перейти в корневую директорию проекта.

```
cd express-threads-api
```

3. Переименовать файл .env.example в .env

```
.env
```

4. Запустить сервер и базу данных через Docker

```
docker compose up
```
После запуска:
- API будет доступно по адресу: http://localhost:3000
- MongoDB будет запущена в Docker-контейнере

## Клиентская часть

Клиентское приложение находится в отдельном репозитории:
https://github.com/veronica-ivanova/react-threads
