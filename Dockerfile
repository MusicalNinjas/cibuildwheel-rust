ARG baseImage=quay.io/pypa/manylinux2014_x86_64:2024-05-13-0983f6f 

FROM ${baseImage}

RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y --profile minimal
ENV PATH=/root/.cargo/bin:$PATH
RUN cargo install just