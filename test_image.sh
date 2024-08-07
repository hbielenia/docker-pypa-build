#!/bin/sh

# docker-pypa-build - Docker configuration for PyPA's build
# Written in 2024 by Hubert Bielenia <13271065+hbielenia@users.noreply.github.com>
# To the extent possible under law, the author(s) have dedicated all copyright and related
# and neighboring rights to this software to the public domain worldwide. This software
# is distributed without any warranty.
# You should have received a copy of the CC0 Public Domain Dedication along with this software.
# If not, see <http://creativecommons.org/publicdomain/zero/1.0/>.

set -e
docker run --rm hbielenia/pypa-build:latest python -m build --version
docker run --rm hbielenia/pypa-build:latest sh -c 'test "$(id -u):$(id -g)" = "1000:1000"'
