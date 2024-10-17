FROM debian:bookworm-slim@sha256:d9afe3cbd3663dde17707c38a52fd987d55b3ed18b513a8bb8500f1bb125b7b7

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
