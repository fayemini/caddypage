sh -c "$(curl --proto '=https' --tlsv1.2 -sSf https://raw.githubusercontent.com/ponylang/ponyup/latest-release/ponyup-init.sh)"
export PATH=/home/ec2-user/.local/share/ponyup/bin:$PATH

# https://github.com/ponylang/ponyc/blob/main/INSTALL.md#linux

ponyup default x86_64-linux-fedora39
ponyup update ponyc release

# ponyc --version

# https://playground.ponylang.io/
# https://github.com/ponylang/ponyc/blob/main/INSTALL.md
# https://github.com/ponylang/ponyup