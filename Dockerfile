FROM docker.io/pyston/slim:2.3.4

ENV KAPITAN_VERSION=0.28.0

RUN apt-get update && apt-get install -y \
    ca-certificates \
    cargo \
    git \
    socat \
    gnupg \
    build-essential \
    libffi-dev \
    libssl-dev

RUN pyston -m pip install --upgrade pip

RUN pyston -m pip install kapitan==${KAPITAN_VERSION}
