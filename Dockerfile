# docker_mpd
FROM alpine:edge
ARG VERSION="0.4.9.9-r0"
LABEL version=${VERSION}
LABEL maintainers="[John Sing Dao Siu](https://github.com/J-Siu)"
LABEL name="tor"
LABEL usage="https://github.com/J-Siu/docker_tor/blob/master/README.md"
LABEL description="Docker - tor with UID/GID handling"

COPY docker-compose.yml env start.sh /
RUN apk --no-cache add \
tor=0.4.9.9-r0 \
	ca-certificates \
	tzdata \
	&& chmod +x /start.sh \
	&& mkdir -p /tor

ENTRYPOINT ["/start.sh"]
