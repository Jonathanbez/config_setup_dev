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

# Instale o VIM
sudo apt install vim -y

# Instale o gerenciador de versões Ruby, verifique o link do RMV para instalar o RVM
# https://github.com/rvm/ubuntu_rvm
sudo apt-get install software-properties-common
sudo apt-add-repository -y ppa:rael-gc/rvm
sudo apt-get update
sudo apt-get install rvm -y
sudo usermod -a -G rvm $USER
echo 'source "/etc/profile.d/rvm.sh"' >> ~/.zshrc

# Aconselho a Reinicie o computador
#reboot

# Instale o Ruby
rvm install 3.2.2

# Instale o Rails
gem install rails

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



