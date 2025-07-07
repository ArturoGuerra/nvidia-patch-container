FROM nvcr.io/nvidia/cuda:12.9.1-base-ubuntu24.04

LABEL org.opencontainers.image.source=https://github.com/ArturoGuerra/nvidia-patch-container

RUN apt-get update && apt-get install -y --no-install-recommends \
    ca-certificates \
    git && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /

COPY nvidia-driver-patch /usr/local/bin

ENTRYPOINT ["/usr/local/bin/nvidia-driver-patch"]
