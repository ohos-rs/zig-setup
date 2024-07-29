FROM --platform=linux/amd64 southorange/ohos-base:v4.1

ENV PATH=/root/zig/zig-x86_64-linux-gnu-baseline:$PATH

COPY ./zig-x86_64-linux-gnu-baseline.zip /root/

RUN apt-get update \
    && unzip ~/zig-x86_64-linux-gnu-baseline.zip -d ~/zig \
    && rm -rf ~/zig-x86_64-linux-gnu-baseline.zip
