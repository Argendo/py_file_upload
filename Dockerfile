# Используем официальный образ Python
FROM python:3.8-slim

# Устанавливаем необходимые зависимости
RUN pip install flask

# Копируем приложение в контейнер
COPY app_upload.py /app.py

# Определяем переменную окружения для Flask
ENV FLASK_APP=/app.py

# Определяем рабочую директорию
WORKDIR /

# Команда для запуска Flask приложения
CMD ["flask", "run", "--host=0.0.0.0"]

