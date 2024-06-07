# Dependabot can't decode the yyyy-mm-dd-sha format used by cibuildwheel, so no point in restricting tags here.
# (See https://github.com/pypa/cibuildwheel/discussions/1858)
ARG baseImage=quay.io/pypa/manylinux2014_x86_64
FROM ${baseImage}

ARG rustup_options=
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y --profile minimal ${rustup_options}
ENV PATH=/root/.cargo/bin:$PATH
RUN cargo install just