# when i say vi i mean neovim :p
alias vi="nvim"
alias dcub="docker-compose up --build"
alias ddwn="docker-compose down"

# Golang
export PATH=$PATH:/usr/local/go/bin
export GOPATH="$HOME/go/"

# Rust path
export PATH="$HOME/.cargo/bin:$PATH"
export RUST_SRC_PATH="$(rustc --print sysroot)/lib/rustlib/src/rust/src" # needed for racer

alias rud="rustup doc --book"

# load direnv
eval "$(direnv hook zsh)"

