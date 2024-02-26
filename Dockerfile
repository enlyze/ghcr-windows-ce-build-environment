#
# Dockerfile for creating a Windows CE build environment (ARM and i386, using https://github.com/enlyze/cegcc-build)
# Copyright (c) 2024 Colin Finck, ENLYZE GmbH <c.finck@enlyze.com>
# SPDX-License-Identifier: MIT
#

FROM debian:12-slim
MAINTAINER Colin Finck <c.finck@enlyze.com>
LABEL Description="Debian with CeGCC 9.3.0 (ENLYZE version for ARM and i386) and Git"

RUN apt update; \
    DEBIAN_FRONTEND=noninteractive apt install -y --no-install-recommends bison build-essential flex git libgmp-dev libmpc-dev libmpfr-dev texinfo

RUN git clone --depth 1 --recursive https://github.com/enlyze/cegcc-build; \
    cd cegcc-build; \
    ./build_cf.sh /opt/cegcc-arm arm-mingw32ce; \
    cd ..; \
    rm -rf cegcc-build

RUN git clone --depth 1 --recursive https://github.com/enlyze/cegcc-build; \
    cd cegcc-build; \
    ./build_cf.sh /opt/cegcc-i386 i386-mingw32ce; \
    cd ..; \
    rm -rf cegcc-build
