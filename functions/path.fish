set -g -x PATH /usr/local/bin $PATH

# Add yarn npm local modules
export PATH="$PATH:./node_modules/.bin"

#Rust cargo add to path
set -x PATH $HOME/.cargo/bin $PATH
