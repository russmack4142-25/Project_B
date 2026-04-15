FROM python:3.14.4-slim

WORKDIR /app

RUN pip install requests

COPY potter-app.py .

CMD ["python3", "potter-app.py"]