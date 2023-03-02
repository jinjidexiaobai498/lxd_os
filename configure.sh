
rustup override set nightly
rustup target add thumbv7em-none-eabihf
cargo build --target thumbv7em-none-eabihf
# Linux
cargo rustc -- -C link-arg=-nostartfiles
# Windows
cargo rustc -- -C link-args="/ENTRY:_start /SUBSYSTEM:console"
# macOS
cargo rustc -- -C link-args="-e __start -static -nostartfiles"
