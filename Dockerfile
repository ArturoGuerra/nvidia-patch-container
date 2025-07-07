FROM nvcr.io/nvidia/cuda:12.9.1-base-ubuntu24.04

RUN apt-get update && apt-get install -y --no-install-recommends \
    ca-certificates \
    git && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /

COPY nvidia-driver-patch /usr/local/bin

ENTRYPOINT ["nvidia-driver-patch"]
