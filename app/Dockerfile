# Dockerfile, Image, Container
FROM python:3.9.2

WORKDIR /opt/app

COPY requirements.txt ./requirements.txt
RUN pip install --no-cache-dir -r requirements.txt
EXPOSE 8501
COPY . .
ENTRYPOINT ["streamlit", "run"]
CMD ["app.py"]