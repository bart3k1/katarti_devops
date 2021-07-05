FROM ubuntu:latest


RUN apt-get update && \
    apt install pip -y && \
    pip install falcon && \
    mkdir /myapp


COPY sample.py /myapp/sample.py
WORKDIR /myapp
EXPOSE 8000

CMD ["python3", "sample.py"]

