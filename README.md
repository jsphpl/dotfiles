# dotfiles
> Joseph's Ansible-powered dotfiles (currently only for macOS)

## Setup
```bash
./install.sh
```

## Customization
When using a fork of this repository as the basis for your own dotfiles, you should customize the following:

1) Set your name and email in `variables/identity.yml` (currently used for global git config)
2) Adapt default software choice in `variables/software.yml`
3) Check system settings in `variables/defaults.yml`
4) Adapt zsh config in `variables/shell.j2`
5) Add custom paths in `variables/paths.yml`
6) Define custom shell functions in `roles/rc/templates/functions.j2`
