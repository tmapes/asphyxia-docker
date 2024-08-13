FROM debian:bookworm-slim@sha256:2ccc7e39b0a6f504d252f807da1fc4b5bcd838e83e4dec3e2f57b2a4a64e7214

WORKDIR /opt/asphyxia

COPY start_asphyxia.sh /opt/asphyxia

RUN apt update \
    && apt install -y curl unzip \
    && curl -sLO https://github.com/asphyxia-core/asphyxia-core.github.io/releases/download/v1.50/asphyxia-core-linux-x64.zip \
    && unzip asphyxia-core-linux-x64.zip && rm asphyxia-core-linux-x64.zip \
    && chmod +x start_asphyxia.sh \
    && mkdir -p /opt/asphyxia/savedata /opt/asphyxia/plugins \
    && curl -sLo /usr/local/bin/dumb-init https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_x86_64 \
    && chmod +x /usr/local/bin/dumb-init

EXPOSE 8083
VOLUME /opt/asphyxia/savedata /opt/asphyxia/plugins

ENTRYPOINT [ "/usr/local/bin/dumb-init", "--" ]
CMD ["/opt/asphyxia/start_asphyxia.sh" ]
