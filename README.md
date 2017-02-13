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
    git clone https://github.com/r0y3/dotfiles.git
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

TODO
----

* More instructions.
