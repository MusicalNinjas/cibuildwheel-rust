FROM quay.io/pypa/musllinux_1_2_x86_64:2024.07.01-1

RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y --profile minimal ${rustup_options}
ENV PATH=/root/.cargo/bin:$PATH
RUN cargo install just
