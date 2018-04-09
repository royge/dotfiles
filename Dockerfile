# Let's use Ubuntu 17.10
FROM ubuntu:artful

# Let's update packages
RUN apt-get update

# Let's install vim, git, curl
RUN apt-get install -y vim git curl

# Let's use vim-plug as our plugin manager
RUN curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Let's clone my dotfiles repo
RUN git clone https://github.com/royge/dotfiles.git

# And symlink the .vimrc to my dotfiles .vimrc
RUN ln -s $PWD/dotfiles/.vimrc ~/.vimrc

# Install vim plugins
RUN vim +PlugInstall +qall
