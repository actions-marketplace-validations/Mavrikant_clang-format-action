FROM ubuntu:22.04

RUN apt-get update && apt-get install -y \
        git \
        jq \
        xz-utils \
        clang \
        lldb \
        lld \
        clang-format

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
