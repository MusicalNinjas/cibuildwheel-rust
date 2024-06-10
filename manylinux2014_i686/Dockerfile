FROM quay.io/pypa/manylinux2014_i686:2024.06.09-5

# Default host not correctly identified by rustup under QEMU on x64
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y --profile minimal --default-host i686-unknown-linux-gnu
ENV PATH=/root/.cargo/bin:$PATH
RUN cargo install just
