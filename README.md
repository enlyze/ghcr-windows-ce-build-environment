# ghcr-windows-ce-build-environment

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This repository contains the public Docker image that is used by GitHub Actions to build our Windows CE software.
It offers a CeGCC 9.3.0 toolchain supporting ARM and i386 targets (see https://github.com/enlyze/cegcc-build)

The Docker image itself is built via GitHub Actions and pushed to https://ghcr.io/enlyze/windows-ce-build-environment.
