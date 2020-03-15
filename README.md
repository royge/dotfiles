# dot files

Configuration files on my development machine.

**NOTE**: This is tested only in Ubuntu 18.04 LTS.

## Getting Started

1. Clone repo.

    ```
    git clone https://github.com/royge/dotfiles.git
    ```

1. Install dependencies

    ```
    cd dotfiles
    ./install.sh
    ```

1. Run ```vim``` and execute ```:PlugInstall```

1. Install `go` and `nodejs`

    **NOTE**: Please their website for installation instructions.

1. Add `YCM` completion supports

    ```
    cd ~/.vim/plugged/YouCompleteMe
    python3 ./install.py --gocode-completer --tern-completer
    ```

1. Reboot.

## Python + VIM

- [VIM and Python - a Match Made in Heaven](https://realpython.com/blog/python/vim-and-python-a-match-made-in-heaven/)

## Go + VIM

- [Go development plugin for Vim](https://github.com/fatih/vim-go)
