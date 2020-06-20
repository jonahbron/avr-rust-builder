# AVR Rust Build Container

This container contains the dependencies and the source code of the
[AVR Rust](https://github.com/avr-rust/rust) fork.  It provides a relable
environment in which the fork can be consistently compiled.  This process takes up a lot of memory, so if you're not on Linux natively, you'll need to change your Docker settings to allocate more memory (8GB should work).

Recommended usage:

```bash
$ mkdir -p build && docker run --mount "type=bind,src=$PWD/build,dst=/rust/build" jonahbron/avr-rust-builder
```

This will create a `build` directory, and compile Rust within that directory.
Once it's done, you can link the toolchain to `rustup` like so:

```bash
$ rustup toolchain link avr $PWD/build/x86_64-unknown-linux-gnu/stage2
```

Once that's done, you can use the AVR just like any other toolchain.  Example:

```bash
$ rustup run avr rustc
```
