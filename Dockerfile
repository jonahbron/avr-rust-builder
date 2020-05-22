FROM jonahbron/rust-builder:latest

WORKDIR /
RUN git clone https://github.com/avr-rust/rust.git
WORKDIR /rust
# eb77ef4 = avr-support @ 2020-05-22, verified to work
RUN git checkout eb77ef4
RUN printf '[llvm]\nexperimental-targets = "AVR"\n' > config.toml
