FROM elixir:1.9.4-alpine

ENV MIX_ARCHIVES /opt/archives

RUN mix do local.hex --force, \
           archive.install --force hex sbom

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
