#!/bin/sh

# Adds `~/.local/bin` to $PATH
export PATH="$PATH:$(du "$HOME/.local/bin" | cut -f2 | paste -sd ':')"
export CURL_CA_BUNDLE="/etc/ssl/certs/ca-certificates.crt"
export PATH="$PATH:/opt/anaconda/bin/"
# Default programs:
export EDITOR="vim"
export TERMINAL="kitty"
export BROWSER="firefox"
export READER="zathura"
