FROM python:3.8-alpine

RUN pip install flask
RUN pip install pandas

COPY . /opt/

EXPOSE 8080

WORKDIR /opt

ENTRYPOINT ["python", "HelloWorld_app.py"]
