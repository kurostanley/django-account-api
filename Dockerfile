FROM python:3.12-slim

WORKDIR /app

COPY . /app

# install system depandancy
RUN apt-get update && apt-get install -y \
    libpq-dev \
    gcc \
    && apt-get clean

# install Python despendancy
RUN pip install --no-cache-dir -r requirements.txt

# run migrate and run the service 
CMD ["sh", "-c", "python manage.py migrate && python manage.py runserver 0.0.0.0:8000"]
