FROM python:3.8

RUN pip install flask
RUN pip install pandas

COPY . /app/

EXPOSE 8080

WORKDIR /app

ENTRYPOINT ["python", "HelloWorld_app.py"]
