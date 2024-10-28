=================
docker-pypa-build
=================
Configuration for automated builds of `Python's Docker image`_
with `pypa/build`_ installed.

This project is not affiliated in any way with `PyPA`_. PyPA is mentioned
in several places alongside ``build`` because *build* is a very generic
word that needs to be put in context.

Download
========
Images built from this repository are available from `Docker Hub`_ as
`hbielenia/pypa-build`_ and from `GitHub Container Registry`_
as ``ghcr.io/hbielenia/docker-pypa-build``.

Images
======
The currently built images are:
- ``1.2-py3.12``, also tagged ``1.2-py3.12-bullseye``, ``1.2-py3.12.7``,
  ``1.2-py3.12.7-bullseye``, ``1.2.2-py3.12``, ``1.2.2-py3.12-bullseye``,
  ``1.2.2-py3.12.7``, ``1.2.2-py3.12.7-bullseye``, ``1.2.2``, ``1.2``
  and ``latest``.
- ``1.2-py3.11``, also tagged ``1.2-py3.11-bullseye``, ``1.2-py3.11.10``,
  ``1.2-py3.11.10-bullseye``, ``1.2.2-py3.11``, ``1.2.2-py3.11-bullseye``,
  ``1.2.2-py3.11.10`` and ``1.2.2-py3.11.10-bullseye``.

Usage
=====
``build`` is invoked as ``python -m build``, so to check the version
present in this image you would execute::

  docker run --rm hbielenia/pypa-build python -m build --version

Use this invocation with other flags as described in `build`_ documentation.
With Docker's `bind mounts`_, you can run this image with your local directory
containing working ``build`` configuration::

  docker run -v "$PWD":/usr/src/app --rm hbielenia/pypa-build python -m build

This will create a directory called ``dist/`` containing built Python packages.
The ownership of this directory will be ``1000:1000``, which are very often
used ID's for human user and their group in UNIX-like systems. If your setup
differs, you may need to modify the image yourself.

Building locally
================
To build an image on your local machine, you must have `Docker Engine`_
installed and ``docker`` available in your command line. Then, after
cloning this repository, execute in it's directory::

  docker build -t build:latest -f 3.11-bullseye.Dockerfile .

This will create an image tagged ``build:latest`` in your local Docker image
store. You can change this tag name to whatever you like, as long as it
doesn't conflict with other image tags.

Issues and support
==================
Bug reports and feature requests are collected at `GitHub Issues`_.
For questions and usage help, please use `Discussions`_ instead. Bear in mind
that this project isn't a full time job and no one is under any obligation
to answer. However, there is genuine intent of providing support on a
best effort basis.

If you or your company require more commitment, you can inquire about
paid support at ``13271065+hbielenia@users.noreply.github.com``.

Copyright
=========
This configuration isn't very original, but in case it's copyrightable
now or in the future, in whole or in part, it's released under the terms
of `CC0 1.0 Universal`_ license. This license is pretty much the same as
public domain, but adjusted for countries where author can't simply release
into public domain. See ``COPYING.txt`` for full license text.

.. _Python's Docker image: https://hub.docker.com/_/python
.. _pypa/build: https://build.pypa.io/en/stable/index.html
.. _pyPA: https://www.pypa.io/en/latest/
.. _Docker Hub: https://hub.docker.com/
.. _hbielenia/pypa-build: https://hub.docker.com/r/hbielenia/pypa-build
.. _GitHub Container Registry: https://docs.github.com/en/packages/working-with-a-github-packages-registry/working-with-the-container-registry
.. _build: https://build.pypa.io/en/stable/index.html
.. _bind mounts: https://docs.docker.com/storage/bind-mounts/
.. _Docker Engine: https://docs.docker.com/engine/
.. _GitHub Issues: https://github.com/hbielenia/docker-pypa-build/issues
.. _Discussions: https://github.com/hbielenia/docker-pypa-build/discussions
.. _CC0 1.0 Universal: https://creativecommons.org/publicdomain/zero/1.0/
