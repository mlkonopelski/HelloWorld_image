FROM python:3.8

RUN pip install flask
RUN pip install pandas

COPY . /app/
WORKDIR /app

ENTRYPOINT ["python", "HelloWorld_app.py"]
