# Dependabot can't decode the yyyy-mm-dd-sha format used by cibuildwheel. Trying to use latest@sha256: instead
ARG baseImage=quay.io/pypa/manylinux2014_x86_64:latest@sha256:b31275b340d8661e45a9eed29ca93d605a702557781fa65a7cb35bc9639165adsha256:b31275b340d8661e45a9eed29ca93d605a702557781fa65a7cb35bc9639165ad
FROM ${baseImage}

ARG rustup_options=
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y --profile minimal ${rustup_options}
ENV PATH=/root/.cargo/bin:$PATH
RUN cargo install just