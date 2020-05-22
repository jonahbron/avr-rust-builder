docker build . -t jonahbron/avr-rust-builder --rm
#docker run -v "$PWD/build:/rust/build" --rm rust-avr build
#rustup toolchain link avr build/x86_64-unknown-linux-gnu/stage2

#echo 'Toolchain stage 2 linked as "avr". To run commands under this toolchain, use `rustup run avr [command]`.  For example:

#$ rustup run avr rustc'

