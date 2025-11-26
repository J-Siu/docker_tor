# docker_mpd
FROM alpine:edge

LABEL version="0.4.8.21-r0"
LABEL maintainers="[John Sing Dao Siu](https://github.com/J-Siu)"
LABEL name="tor"
LABEL usage="https://github.com/J-Siu/docker_tor/blob/master/README.md"
LABEL description="Docker - tor with UID/GID handling"

COPY docker-compose.yml env start.sh /
RUN apk --no-cache add \
	tor=0.4.8.21-r0 \
	ca-certificates \
	tzdata \
	&& chmod +x /start.sh \
	&& mkdir -p /tor

ENTRYPOINT ["/start.sh"]
