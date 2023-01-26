FROM python:3.8

COPY main.py /webserver/
RUN pip3 install fastapi
RUN pip3 install uvicorn

WORKDIR /webserver

CMD [ "uvicorn", "main:app", "--reload", "--host", "0.0.0.0"]
