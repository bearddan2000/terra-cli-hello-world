FROM ubuntu:22.04

WORKDIR /workspace

RUN apt update && apt install -y clang cmake git llvm-13 \
 lua5.4 zlib1g-dev

RUN git clone https://github.com/terralang/terra.git

WORKDIR /workspace/terra/build

# RUN cmake -DCMAKE_INSTALL_PREFIX=$PWD/../install ..

# RUN make install -j4 # tune this for how many cores you have

WORKDIR /workspace/terra

COPY bin .

# 
# CMD "./run.sh"