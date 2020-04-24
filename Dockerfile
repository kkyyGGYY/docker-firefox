from ubuntu:latest

RUN apt-get update && apt-get install -y build-essential

WORKDIR /app
COPY ./requirements.txt /app
COPY ./app.py /app

RUN pip install flask

ENTRYPOINT ["python"]
CMD ["app.py"]
