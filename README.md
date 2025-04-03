# home-manager
# Installation instructions

1. install nix - [determinate.systems](https://zero-to-nix.com/start/install/)
```bash
curl --proto '=https' --tlsv1.2 -sSf -L https://install.determinate.systems/nix | sh -s -- install
```
2. install home-manager - [homemanager manual](https://nix-community.github.io/home-manager/index.xhtml#sec-install-standalone)
NOTE: this config is for installation through channels
update channel
```bash
nix-channel --add https://github.com/nix-community/home-manager/archive/master.tar.gz home-manager

nix-channel --update
```
run installation
```bash
nix-shell '<home-manager>' -A install
```
src `$HOME/.nix-profile/etc/profile.d/hm-session-vars.sh` in .bashrc
