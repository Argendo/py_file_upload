# Используем официальный образ Python
FROM python:3.8-slim

# Устанавливаем необходимые зависимости
RUN pip install flask

WORKDIR /app

# Копируем приложение в контейнер
COPY app_upload.py /app/app_upload.py
COPY templates/index_upload.html/ /app/templates/index_upload.html

# Определяем переменную окружения для Flask
ENV FLASK_APP=app_upload.py

EXPOSE 50020

# Команда для запуска Flask приложения
CMD ["flask", "run", "--host=0.0.0.0", "--port=50020"]

