FROM gcc:12

RUN apt-get update && \
    apt-get install -y cmake libzmq3-dev doxygen && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    cmake --version && \
    gcc --version

WORKDIR /usr/src/c12adapter

COPY . .

RUN sh build.sh

# CMD ["./c12adapter"]
