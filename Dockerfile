FROM ubuntu:latest
LABEL maintainer="github@fabi.online"

RUN apt update && \
    apt install -y \
    python3 \
    python3-pip && \
    rm -rf /var/lib/apt/lists/*
RUN pip3 install --no-cache-dir torch==1.7.0+cpu \
    -f https://download.pytorch.org/whl/torch_stable.html && \
    pip3 install --no-cache-dir transformers cookiecutter fastapi uvicorn

EXPOSE 8888

ENTRYPOINT [ "transformers-cli", "serve", "--host", "0.0.0.0", "--port", "8888" ]
