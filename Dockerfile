# renovate: datasource=docker depName=debian
FROM debian:bookworm-slim

RUN apt-get update && \
    apt-get install -y --no-install-recommends intel-gpu-tools && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["intel_gpu_top"]
