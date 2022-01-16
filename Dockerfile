FROM python:slim
LABEL version="1.0"
LABEL description="QRcode Generator"
LABEL com.example.vendor="Justin Briard"
LABEL org.opencontainers.image.authors="justin@briard.email"


WORKDIR /usr/src/qrcode

COPY code/ . 

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8080

CMD [ "python", "./run.py" ]
