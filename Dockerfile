#Dockerfile front
FROM python:3.9.10-alpine
WORKDIR /app
COPY . /app
EXPOSE 8000
CMD ["python3", "-m", "http.server", "8000"]
