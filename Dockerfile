FROM debian:bookworm

WORKDIR /opt

COPY start_asphyxia.sh /opt

RUN apt update \
    && apt install -y curl unzip \
    && curl -sLO https://github.com/asphyxia-core/asphyxia-core.github.io/releases/download/v1.40/asphyxia-core-linux-x64.zip \
    && unzip asphyxia-core-linux-x64.zip && rm asphyxia-core-linux-x64.zip \
    && chmod +x start_asphyxia.sh \
    && mkdir -p /opt/savedata && mkdir -p /opt/plugins

EXPOSE 8083 5700

ENTRYPOINT [ "/opt/start_asphyxia.sh" ]