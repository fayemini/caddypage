#! /usr/bin/env bash

# if no asdf

# git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.14.0
# . "$HOME/.asdf/asdf.sh"

ERLANG_VERSION=27.0
ELIXIR_VERSION=main-otp-27

asdf plugin add erlang

CFLAGS="-O2 -g -fno-stack-check -Wno-error=implicit-function-declaration" \
KERL_CONFIGURE_OPTIONS="--with-odbc --with-ssl=$(brew --prefix openssl@3)" \

asdf install erlang $ERLANG_VERSION

asdf plugin add elixir

asdf install elixir $ELIXIR_VERSION

asdf global erlang $ERLANG_VERSION
asdf global elixir $ELIXIR_VERSION
