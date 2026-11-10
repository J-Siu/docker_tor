# docker_mpd
FROM alpine:edge
ARG PKG="tor"
ARG VER="0.4.9.16-r0"
ARG USR="https://github.com/J-Siu"
LABEL version=${VER}
LABEL maintainers="[John Sing Dao Siu](${USR})"
LABEL name=${PKG}
LABEL usage="${USR}/docker_${PKG}/blob/master/README.md"
LABEL description="Docker - tor with UID/GID handling"

COPY docker-compose.yml env start.sh /
RUN apk --no-cache add \
${PKG}=${VER} \
ca-certificates \
ca-certificates-bundle \
tzdata \
&& chmod +x /start.sh \
&& mkdir -p /tor

ENTRYPOINT ["/start.sh"]
