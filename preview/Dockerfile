# syntax=docker/dockerfile:1
FROM inputoutput/cardano-node:latest

RUN mkdir -p /data/preview
RUN mkdir -p /ipc

COPY ./config.json /data/preview/config.json
COPY ./topology.json /data/preview/topology.json
COPY ./byron-genesis.json /data/preview/byron-genesis.json
COPY ./shelley-genesis.json /data/preview/shelley-genesis.json
COPY ./alonzo-genesis.json /data/preview/alonzo-genesis.json

COPY ./entrypoint /usr/local/bin/entrypoint
RUN chmod +x /usr/local/bin/entrypoint

ENTRYPOINT ["bash", "/usr/local/bin/entrypoint"]
