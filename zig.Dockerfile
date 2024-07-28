FROM --platform=linux/amd64 southorange/ohos-base:v4.1

ENV PATH=/root/zig:$PATH

COPY ./zig-x86_64-linux-gnu-baseline.zip /root/

RUN apt-get update \
    && unzip ~/zig-x86_64-linux-gnu-baseline.zip -d ~/zig
