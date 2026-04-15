FROM python:3.14.4-slim

WORKDIR /app

RUN pip install requests

COPY currency-app.py .

CMD [ "python3", "currency-app.py" ]