[![Conventional Commits](https://img.shields.io/badge/Conventional%20Commits-1.0.0-yellow.svg)](https://conventionalcommits.org)

# Minio Client

This is an opinionated image for the Minio storage.
It ships with a custom entrypoint, that can be configured through some ENV vars.

## Tools and Libraries

Brings a custom entrypoint.

# How to use this

The image comes with a Makefile that has everything abstracted away for you to easily customize it.

```bash
$ make make NODE_VERSION=13.10.1 ALPINE_VERSION=3.11 build push
```

## Available VARS

```bash
REGISTRY=${REGISTRY:-ORGANIZATION/mc}
VCS_URL=${VCS_URL:-https://THE_REPO_URL}
```

### ENV Vars

```bash
export MINIO_ALIAS=minio # this is the default value
export MINIO_HOST_NAME=minio.example.com
export MINIO_ACCESS_KEY=my-minio-access-key
export MINIO_SECRET_KEY=my-super-sweet-secret
```

## Optional Setup

If you are into some tooling for keeping commit-messages clean and want to keep an automated CHANGELOG.md, feel free to `make init` ;).

It'll install the node_modules:
- standard-version,
- husky
- commit-lint

To make this work you need to have NODE.js installed.

# Contributing
In lieu of a formal styleguide, take care to maintain the existing coding style.

1. Fork it
2. Create your feature branch (git checkout -b feature/my-cool-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin feature/my-new-feature)
5. Create new Pull Request

# License
Copyright (c) 2020 Territory Embrace - Talent Platforms.
