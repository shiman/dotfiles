Key Configurations for Running Ubuntu under VMWare
=====

## Introduction
This repo keeps track of the setting up process and configurations for unning Ubuntu under VMWare Workstation.

*Features*:
- supports for high DPI
- supports for VMware workstation/player
- change CAPSLOCK to another CTRL
- faster keyboard rate

### Hardware

- Surface Pro 4
- DELL P2415Q 4K monitor
- Some random keyboard

### Software

- Windows 10 Pro as the Host
- Ubuntu 14.04 LTS
- VMWare Player
- i3wm
- oh-my-zsh
- emacs24.5 (with spacemacs configuration)

## Set up a new virtual machine

1. Download the iso file of any Ubuntu distribution.
2. Create a virtual machine and install Ubuntu, either manually or using quick install.
3. Log into the system, run some necessary updates.

Following the steps above, the Ubuntu system will be able to run.
If quick install is used, probably it could cooperate with the guest (like resolution adaptation).
However we need some extra work to make it fully working for high DPI and my personal preferences.

## Set up i3wm

1. Install i3: `sudo apt-get install i3`
2. Install dmenu
   `dmenu` is a key component inside i3, and the default binary in Ubuntu repo is not that complete
   so that some functions are not working well. (e.g. set font)
   Follow the `install.sh` inside this repo (`deps/dmenu-4.6`), you will get it working much better.
3. Copy `.i3` to the `$HOME` folder.

After these steps, i3wm will show at the login option list. However, the dpi settings might not work.

## Set up vmware-tools

After setting up i3wm, no matter it looks all good or there are something funky, it is highly
recommended to manually install vmware-tools again. Simply depackage the tar file inside the `deps`
folder and execute the installation perl script.

*Note*: you must be careful about each step when executing the script. By default it disables
some useful functionalities like folder sharing. Enable them.

After reinstalling the `vmware-tools`, the dpi issue is mostly solved.

## Emacs and Spacemacs
TODO

## Personal Settings

- Accelerate keyboard repeat rate
- Change CAPSLOCK to behave as another CTRL

Simply copy (or append) all the dot files in this repo to your home folder. They take advantage of
`Xmodmap` and `xinitrc`.
