# syntax=docker/dockerfile:1
FROM python:3.7-alpine
WORKDIR /code
ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0
RUN apk add --no-cache gcc musl-dev linux-headers
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
EXPOSE 5000
COPY . .
CMD ["flask", "run"]

# docker build -t flask-app:1.0 .
# docker build --platform=linux/amd64 -t flask-app:1.0 .
# docker run -d -h flask -p 8000:5000 --link redis --name flask flask-app:1.0