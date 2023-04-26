FROM tensorflow/tensorflow:2.12.0-gpu-jupyter

# Install apt dependencies
RUN apt-get update &&\
    apt-get install -y \
    git

RUN python -m pip install --upgrade pip

RUN pip install -U -q tf-models-official==2.12.0

WORKDIR /app
COPY . .
# CMD ["jupyter notebook --allow-root"]
