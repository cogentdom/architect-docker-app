# Dockerfile, Image, Container
FROM python:3.9.2

WORKDIR /app

COPY requirements.txt ./requirements.txt
RUN pip install --no-cache-dir -r requirements.txt
EXPOSE 80
COPY . /app
ENTRYPOINT ["streamlit", "run"]
CMD ["main.py"]