# syntax=docker/dockerfile:1

# docker-pypa-build - Docker configuration for PyPA's build
# Written in 2024 by Hubert Bielenia <13271065+hbielenia@users.noreply.github.com>
# To the extent possible under law, the author(s) have dedicated all copyright and related
# and neighboring rights to this software to the public domain worldwide. This software
# is distributed without any warranty.
# You should have received a copy of the CC0 Public Domain Dedication along with this software.
# If not, see <http://creativecommons.org/publicdomain/zero/1.0/>.

FROM python:3.11-bullseye@sha256:c927121ba6f075a139438db25b22e0c21df8ecae790958f5f3764c32e3c25834
WORKDIR /usr/src/app
RUN python -m pip install git+https://github.com/pypa/build.git@1e67c062e9d1b1a6d5ffed621f4b29902bb764e5
RUN adduser --disabled-password --no-create-home --uid 1000 build
USER 1000:1000
