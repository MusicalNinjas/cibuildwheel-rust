ARG rustup_options="--default-host i686-unknown-linux-gnu" 
# not correctly identified by rustup under QEMU on x64

FROM quay.io/pypa/manylinux2014_x86_64:2024.06.09-3

RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y --profile minimal ${rustup_options}
ENV PATH=/root/.cargo/bin:$PATH
RUN cargo install just