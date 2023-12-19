# dotfiles

My dotfiles controlled by GNU Stow.

```sh
sudo stow pacman -t /
```

## Just for backup

- grub

- docker

```sh
sudo cp docker/etc/docker/daemon.json /etc/docker/daemon.json
sudo cp docker/etc/systemd/system/docker.service.d/override.conf /etc/systemd/system/docker.service.d/override.conf
```
