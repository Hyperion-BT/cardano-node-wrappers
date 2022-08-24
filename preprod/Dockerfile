# syntax=docker/dockerfile:1
FROM inputoutput/cardano-node:latest

RUN mkdir -p /data/preprod
RUN mkdir -p /ipc

COPY ./config.json /data/preprod/config.json
COPY ./topology.json /data/preprod/topology.json
COPY ./byron-genesis.json /data/preprod/byron-genesis.json
COPY ./shelley-genesis.json /data/preprod/shelley-genesis.json
COPY ./alonzo-genesis.json /data/preprod/alonzo-genesis.json

COPY ./entrypoint /usr/local/bin/entrypoint
RUN chmod +x /usr/local/bin/entrypoint

ENTRYPOINT ["bash", "/usr/local/bin/entrypoint"]
