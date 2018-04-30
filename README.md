![nginx 1.13](https://img.shields.io/badge/nginx-1.13-brightgreen.svg) ![License MIT](https://img.shields.io/badge/license-MIT-blue.svg) [![](https://img.shields.io/docker/stars/caffeina/nginx-proxy-server-push.svg)](https://hub.docker.com/r/caffeina/nginx-proxy-server-push 'DockerHub') [![](https://img.shields.io/docker/pulls/caffeina/nginx-proxy-server-push.svg)](https://hub.docker.com/r/caffeina/nginx-proxy-server-push 'DockerHub')

# Fork form [jwilder/nginx-proxy](https://github.com/jwilder/nginx-proxy) with server push support

See the [original documentation](https://github.com/jwilder/nginx-proxy/blob/9521593cbc5acd95901c348f3c20edb99cbdff08/README.md) to find out all the features.

## Usage

To run it:

    $ docker run -d -p 80:80 -v /var/run/docker.sock:/tmp/docker.sock:ro caffeina/nginx-proxy-server-push

Then start any containers you want proxied with an env var `VIRTUAL_HOST=subdomain.youdomain.com`

    $ docker run -e VIRTUAL_HOST=foo.bar.com  ...

### Image variants

The nginx-proxy images are available in two flavors.

#### caffeina/nginx-proxy-server-push:latest

This image uses the debian:jessie based nginx image.

    $ docker pull caffeina/nginx-proxy-server-push:latest

#### caffeina/nginx-proxy-server-push:alpine

This image is based on the nginx:alpine image. Use this image to fully support HTTP/2 (including ALPN required by recent Chrome versions). A valid certificate is required as well (see [original documentation](https://github.com/jwilder/nginx-proxy/blob/9521593cbc5acd95901c348f3c20edb99cbdff08/README.md) for more info).

    $ docker pull caffeina/nginx-proxy-server-push:alpine

Thanks to **[jwilder](https://github.com/jwilder/)** for the awesome work.