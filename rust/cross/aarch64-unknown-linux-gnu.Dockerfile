FROM rustembedded/cross:aarch64-unknown-linux-gnu

RUN apt-get update && \
    apt-get install --assume-yes -y wget make git automake autoconf ca-certificates libc6-dev-arm64-cross

# https://www.openssl.org/source/old/1.1.1/
ARG OPENSSL_VERSION=1.1.1j

ENV MACHINE=armv8
ENV ARCH=arm
ENV CC=aarch64-linux-gnu-gcc

RUN wget https://www.openssl.org/source/openssl-${OPENSSL_VERSION}.tar.gz -O - | tar -xz &&\
    cd openssl-${OPENSSL_VERSION} && \
    ./Configure --prefix=/openssl --openssldir=/openssl/lib linux-aarch64 && \
    make depend && \
    make -j $(nproc) && \
    make install_sw && \
    make install_ssldirs && \
    cd .. && rm -rf openssl-${OPENSSL_VERSION}

ENV PKG_CONFIG_ALLOW_CROSS=true
ENV PKG_CONFIG_ALL_STATIC=true
ENV RUSTFLAGS="-C target-feature=-crt-static"

ENV OPENSSL_DIR=/openssl \
    OPENSSL_STATIC=yes \
    OPENSSL_INCLUDE_DIR=/openssl/include \
    OPENSSL_LIB_DIR=/openssl/lib

ENV PATH="/cargo/bin:$PATH"
