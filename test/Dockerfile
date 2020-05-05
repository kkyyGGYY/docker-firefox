from ubuntu:latest

RUN apt-get update && apt-get install -y build-essential

WORKDIR /home
COPY ./requirements.txt /app
COPY ./app.py /app

ENTRYPOINT ["python"]
CMD ["app.py"]
