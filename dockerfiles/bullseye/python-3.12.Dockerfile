# syntax=docker/dockerfile:1

# docker-pypa-build - Docker configuration for PyPA's build
# Written in 2024 by Hubert Bielenia <13271065+hbielenia@users.noreply.github.com>
# To the extent possible under law, the author(s) have dedicated all copyright and related
# and neighboring rights to this software to the public domain worldwide. This software
# is distributed without any warranty.
# You should have received a copy of the CC0 Public Domain Dedication along with this software.
# If not, see <http://creativecommons.org/publicdomain/zero/1.0/>.

FROM python:3.12-bullseye@sha256:4da4396d9fa63e3f2014b56275ed261eba14b9c6ba51883f81341ee170e64103
WORKDIR /usr/src/app
RUN python -m pip install git+https://github.com/pypa/build.git@3b0b5d07077473f5da3f038cf7b74cd2b65d2a98
RUN adduser --disabled-password --no-create-home --uid 1000 build
USER 1000:1000
