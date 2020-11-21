# dot files

Configuration files on my development machine.

**NOTE**: This is tested only in Ubuntu 20.04 and Mac OS Catalina.

## Getting Started

1. Clone repo.

    ```
    git clone https://github.com/royge/dotfiles.git
    ```

1. Install `go`

1. Install `rust`

1. Execute `install.sh`

    **NOTE**: For Ubuntu, we are installing `vim` from `jonathonf/vim` because the version
    available in ubuntu repo doesn't supports clipboard.

    ```
    cd dotfiles
    ./install.sh
    ```

    **NOTE**: After Mac OS Big Sur upgrade we need to upgrade `reattach-to-user-namespace` as well.

    ```
    brew upgrade reattach-to-user-namespace
    ```

1. Reboot.
