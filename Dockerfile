# Docker-команда FROM вказує базовий образ контейнера
# Наш базовий образ - це Linux з попередньо встановленим python-3.10
FROM python:3.13.2

RUN pip install poetry

# Встановимо робочу директорію всередині контейнера
WORKDIR /app

COPY . .

# Скопіюємо інші файли в робочу директорію контейнера
# COPY pyproject.toml poetry.lock* /app/

RUN poetry config virtualenvs.create false && poetry install --no-root

# Встановимо залежності всередині контейнера


# Запустимо наш застосунок всередині контейнера
CMD ["python", "main.py"]

