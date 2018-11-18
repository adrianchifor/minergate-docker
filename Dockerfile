FROM debian:stable-slim

RUN apt-get update && apt-get install -y curl unzip build-essential

RUN curl -o minergate-cli.zip https://download.minergate.com/xfast-ubuntu-cli && \
    unzip minergate-cli.zip && \
    rm minergate-cli.zip

WORKDIR /minergate-cli
ENTRYPOINT ["./minergate-cli"]
