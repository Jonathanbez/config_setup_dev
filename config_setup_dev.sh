#!/bin/sh
#!/bin/bash

# Atualizar pacote do OS
sudo apt update && sudo apt upgrade -y

# Instale as ferramentas básicas de desenvolvimento
sudo apt install git curl build-essential -y

# Instale as bibliotecas necessárias para C
sudo apt install libssl-dev zlib1g-dev libreadline-dev libsqlite3-dev -y

# Instale o compilador C (por padrão, vem preinstalado no Ubuntu, mas por via das duvidas)
sudo apt install gcc make

# Instale o zsh
sudo apt install zsh -y

# Instale o ohmyzsh (apos instalar o ohmyzsh ele ira pedir confirmação para tornar zsh como SHELL padrão)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"



# Instalar Zsh Autosuggestions
# https://github.com/zsh-users/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Instalar Zsh Syntax Highlighting
# https://github.com/zsh-users/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Incluir no campo plugins do .zshrc
# Ex.: plugins=(zsh-autosuggestions zsh-syntax-highlighting)

# Instalar NEOVIM (versao mais recente usando o repositorio oficial no GitHub)
# Antes de tudo remova o Neovim do seu sistema (talvez ja tenha instalado por engano ou já venha com o OS usado)
sudo apt remove neovim --purge
sudo apt autoremove autoclean clean
# Instale as dependências necessárias:
Sudo apt update -y
sudo apt install git build-essential cmake git pkg-config libtool g++ libunibilium4 libunibilium-dev \
ninja-build gettext libtool libtool-bin autoconf automake unzip curl doxygen lua-term lua-term-dev luarocks -y
#Clone o repositorio e make (compile) o instalador
git clone https://github.com/neovim/neovim
cd neovim
make CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make install



