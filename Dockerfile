FROM rust:1.53

RUN apt-get update && apt-get install -y jq && \
    rm -rf /var/lib/apt/lists/*
RUN cargo install grcov && \
    rustup component add llvm-tools-preview && \
    rustup toolchain install nightly

CMD ["/bin/bash"]