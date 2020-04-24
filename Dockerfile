from ubuntu:latest

RUN apt-get update && apt-get install -y
RUN apt-get install -y python-pip python-dev build-essential

WORKDIR /app
COPY ./requirements.txt /app
COPY ./app.py /app

RUN pip install -r requirements.txt -i  https://pypi.tuna.tsinghua.edu.cn/simple

ENTRYPOINT ["python"]
CMD ["app.py"]
