# FROM tensorflow/tensorflow:2.12.0-gpu-jupyter

# # Install apt dependencies
# RUN apt-get update &&\
#     apt-get install -y \
#     git \
#     python3.9 \
#     python3-pip

# RUN update-alternatives --install /usr/bin/python python /usr/bin/python3.9 1
# RUN update-alternatives --install /usr/bin/python3 python /usr/bin/python3.9 1

# RUN pip install --upgrade pip
# RUN pip install tensorflow==2.12.0
# RUN pip install tf-models-official==2.12.0

# WORKDIR /app
# COPY . .


# # python 3.10 + tensorflow 2.12.0 + tf-models-official==2.12.0

FROM nvidia/cuda:11.8.0-cudnn8-devel-ubuntu22.04

# ARG DEBIAN_FRONTEND=noninteractive
# ENV TZ=Europe/Munich

RUN apt-get update &&\
    apt-get install -y \
    curl unzip git \
    python3 python3-pip python3-dev

RUN update-alternatives --install /usr/bin/python python /usr/bin/python3.10 1

RUN pip3 install tensorflow==2.12.0
RUN pip3 install tf-models-official==2.12.0
# RUN pip3 install TensorRT
RUN pip3 install notebook

WORKDIR /app
COPY . .
