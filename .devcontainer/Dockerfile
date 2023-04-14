FROM mcr.microsoft.com/devcontainers/base:debian

RUN apt-get update && \
  apt-get install -y unzip curl sudo

# NeoVim
RUN apt-get install -y ninja-build gettext libtool-bin cmake g++ pkg-config  && \
  mkdir -p /tmp/neovim && \
  git clone https://github.com/neovim/neovim /tmp/neovim && \
  cd /tmp/neovim && \
  make CMAKE_BUILD_TYPE=RelWithDebInfo && \
  make install && \
  rm -rf /tmp/neovim

# Lua
RUN apt-get install -y luarocks && \
  luarocks install luacheck && \
  luarocks install busted && \
  luarocks install luassert

# Act
RUN curl -s https://raw.githubusercontent.com/nektos/act/master/install.sh | sh -s -- -b /usr/bin

# PreCommit
RUN apt-get install -y pip && \
  pip install pre-commit

RUN rm -rf /var/lib/apt/lists/*

USER vscode

# Stylua
RUN curl https://sh.rustup.rs -sSf | sh -s -- -y --profile minimal && \
  /home/vscode/.cargo/bin/cargo install stylua

ENV PATH="$PATH:/home/vscode/.cargo/bin"
CMD /bin/bash