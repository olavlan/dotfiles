Steps to bootstrap:
1. Install chezmoi.
```
sh -c "$(curl -fsLS get.chezmoi.io)"
```
2. Transfer dotfiles and run bootstrap scripts.
```
chezmoi init olavlan && chezmoi apply -x scripts && chezmoi apply
```
3. Log into firefox and upload extension settings.
