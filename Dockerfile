FROM ubuntu:16.04
RUN app-get update && apt-get install -y pythonpython-pip
RUN pip install flask
COPY app.py /opt/
ENTRYPOINT FLASK_APP=/opt/app.py flask run --host=0.0.0.0 --port=8080

