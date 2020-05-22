# eb77ef4 = avr-support @ 2020-05-22, verified to work
HASH="eb77ef4"
docker build . -t jonahbron/avr-rust-builder:$HASH -t jonahbron/avr-rust-builder:latest --rm --build-arg HASH=$HASH

