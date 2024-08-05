
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

. "$HOME/.cargo/env"

export PATH=/home/ec2-user/.local/share/cargo/bin:$PATH

# https://www.rust-lang.org/tools/install
