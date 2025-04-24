FROM python:3.9.20-alpine3.19

EXPOSE 5261

WORKDIR /URLShortner/

COPY ./requirements.txt requirements.txt

RUN pip install -r requirements.txt

CMD ["flask", "--app", "app", "run", "--host", "0.0.0.0", "--port", "5261"]
