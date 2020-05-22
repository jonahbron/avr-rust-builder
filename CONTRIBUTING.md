# Contributing

To release a new version of this container, first update the hash version in
the Dockerfile.  Build and then compile Rust using the instructions in README
to ensure that the new version works as expected.  If Rust successfully
compiles, then push up the image to Docker Hub.

```bash
$ docker push jonahbron/avr-rust-builder:hash
```

(Replace `hash` with the new avr-rust commit ID).
