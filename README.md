# dot files

Configuration files on my development machine.

Getting Started
---------------

1. Install vim-plug

    ```
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    ```

2. Clone repo.

    ```
    git clone https://github.com/r00ye/dotfiles.git
    ```

3. Create ```.vimrc``` symlink.

    ```
    ln -s ~/dotfiles/.vimrc ~/.vimrc
    ```

4. Run ```vim``` and execute ```:PlugInstall```

5. Install ```tmux```

    ```sudo apt-get install tmux```

6. Create ```.tmux.conf``` symlink.

    ```
    ln -s ~/dotfiles/.tmux.conf ~/.tmux.conf
    ```

7. Install powerline

    ```pip install powerline-status```

8. Install powerline fonts.

    ```
    git clone https://github.com/powerline/fonts
    cd fonts
    ./install
    mkdir ~/.fonts
    mv ~/.local/share/fonts/* ~/.fonts
    wget https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf
    wget https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf
    mv PowerlineSymbols.otf ~/.fonts/
    fc-cache -vf ~/.fonts/
    mkdir ~/.config/fontconfig && mkdir ~/.config/fontconfig/conf.d/
    mv 10-powerline-symbols.conf ~/.config/fontconfig/conf.d/
    ```

9. Install Tmux Themepack.

    ```
    git clone https://github.com/jimeh/tmux-themepack.git ~/.tmux-themepack
    ```

10. Reboot.

TODO
----

* More instructions.
