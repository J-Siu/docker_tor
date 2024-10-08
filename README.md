# Docker - Tor with UID/GID handling [![Paypal donate](https://www.paypalobjects.com/en_US/i/btn/btn_donate_LG.gif)](https://www.paypal.com/donate/?business=HZF49NM9D35SJ&no_recurring=0&currency_code=CAD)

### Table Of Content
<!-- TOC -->

- [Build](#build)
- [Usage](#usage)
  - [Host Directories and Volume Mapping](#host-directories-and-volume-mapping)
  - [Run](#run)
  - [Compose](#compose)
- [Repository](#repository)
- [Contributors](#contributors)
- [Change Log](#change-log)
- [License](#license)

<!-- /TOC -->

### Build

```sh
git clone https://github.com/J-Siu/docker_tor.git
cd docker_compose/docker/tor
docker build --network=host -t jsiu/tor .
```

### Usage

#### Host Directories and Volume Mapping

Host|Inside Container|Mapping Required|Usage
---|---|---|---
${TZ}|P_TZ|no|time zone
${TOR_UID}|PUID|yes|tor uid
${TOR_GID}|PGID|yes|tor gid
${TOR_CNF}|/torrc|yes|tor config file
${TOR_DAT}|/tor/.tor/|yes|tor data directory

#### Run

```docker
docker run \
-d \
-e PUID=1001 \
-e PGID=1002 \
-e P_TZ=America/New_York \
-v /home/jsiu/torrc:/torrc \
-v /home/jsiu/tor:/tor/.tor \
--network=host \
jsiu/tor
```

#### Compose

Get docker-compose template from image:

```docker
docker run --rm jsiu/tor cat /docker-compose.yml > docker-compose.yml
docker run --rm jsiu/tor cat /env > .env
```

Fill in `.env` according to your environment.

```sh
docker-compose up
```

### Repository

- [docker_tor](https://github.com/J-Siu/docker_tor)

### Contributors

- [John Sing Dao Siu](https://github.com/J-Siu)

### Change Log

- 0.4.3.5-r0
  - tor version 0.4.3.5-r0
- 0.4.3.6-r0
  - Auto update to 0.4.3.6-r0
- 0.4.4.5-r0
  - Auto update to 0.4.4.5-r0
- 0.4.4.6-r0
  - Auto update to 0.4.4.6-r0
- 0.4.4.6-r1
  - Auto update to 0.4.4.6-r1
- 0.4.4.7-r0
  - Auto update to 0.4.4.7-r0
- 0.4.5.6-r0
  - Auto update to 0.4.5.6-r0
- 0.4.5.7-r0
  - Auto update to 0.4.5.7-r0
- 0.4.5.8-r0
  - Auto update to 0.4.5.8-r0
- 0.4.6.5-r0
  - Auto update to 0.4.6.5-r0
- 0.4.6.5-r0-p1
  - Add docker push github workflow
- 0.4.6.10-r0
  - Auto update to 0.4.6.10-r0
- 0.4.7.7-r1
  - Auto update to 0.4.7.7-r1
- 0.4.7.8-r0
  - Auto update to 0.4.7.8-r0
- 0.4.7.13-r1
  - Auto update to 0.4.7.13-r1
- 0.4.7.13-r2
  - Auto update to 0.4.7.13-r2
- 0.4.8.12-r0
  - Auto update to 0.4.8.12-r0
<!--CHANGE-LOG-END-->

### License

The MIT License

Copyright (c) 2024

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
