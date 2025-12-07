FROM python:latest

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

RUN mkdir /app
WORKDIR /app

RUN pip install --upgrade pip
COPY requirements.txt  .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD ["fastapi", "run", "app/main.py"]