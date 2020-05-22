FROM jonahbron/rust-builder:latest
ARG HASH

WORKDIR /
RUN git clone https://github.com/avr-rust/rust.git
WORKDIR /rust
RUN git checkout ${HASH}
RUN printf '[llvm]\nexperimental-targets = "AVR"\n' > config.toml
