
# freestanding rust bin
rustup target add thumbv7em-none-eabihf
cargo build --target thumbv7em-none-eabihf
# Linux
cargo rustc -- -C link-arg=-nostartfiles
# Windows
cargo rustc -- -C link-args="/ENTRY:_start /SUBSYSTEM:console"
# macOS
cargo rustc -- -C link-args="-e __start -static -nostartfiles"

# a minimal rust kernel
rustup override set nightly
rustc --version --verbaose
cargo build --target x86_64-lxd_os.json
rustup component add rust-src
cargo install bootimage
rustup component add llvm-tools-preview
