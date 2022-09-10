#Dockerfile, Image, Container
FROM python:3.10-slim

WORKDIR /app

USER root

RUN apt update && apt-get install -y curl

COPY conda_environment .

# RUN sh conda_environment --unattended --single-package python-kubernetes --exec echo hello

COPY list-pods.py .

ENTRYPOINT ["sh", "conda_environment", "--unattended", "--single-package", "python-kubernetes", "--exec",  "python3",  "./list-pods.py"]