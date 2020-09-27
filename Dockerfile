FROM ubuntu:20.04
LABEL maintainer="Kazuki Ishigaki<k-ishigaki@frontier.hokudai.ac.jp>"

RUN apt-get update && apt-get install -y \
    python3-dev \
    python3-pip \
    usbutils \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

RUN pip3 install --no-cache-dir --user -U pyocd
ENV PATH=$PATH:/root/.local/bin
