# docker_mpd
FROM alpine:edge

LABEL version="0.4.6.10-r0"
LABEL maintainers="[John Sing Dao Siu](https://github.com/J-Siu)"
LABEL name="tor"
LABEL usage="https://github.com/J-Siu/docker_tor/blob/master/README.md"
LABEL description="Docker - tor with UID/GID handling"

RUN apk update \
&& apk --no-cache add tzdata ca-certificates tor=0.4.6.10-r0

COPY docker-compose.yml env start.sh /
RUN chmod +x /start.sh \
&& mkdir -p /tor

ENTRYPOINT ["/start.sh"]