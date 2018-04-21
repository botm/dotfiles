#!/usr/bin/python

from os import symlink
from shutil import move
from os.path import expanduser as expand

symlinks = {
    expand("~/dotfiles/.vim/"): expand("~/.vim"),
    expand("~/dotfiles/.vimrc"): expand("~/.vimrc"),
    expand("~/dotfiles/.xprofile"): expand("~/.xprofile"),
    expand("~/dotfiles/.fehbg"): expand("~/.fehbg"),
    expand("~/dotfiles/.zshrc"): expand("~/.zshrc"),
    expand("~/dotfiles/ranger"): expand("~/.config/ranger"),
    expand("~/dotfiles/termite"): expand("~/.config/termite"),
    expand("~/dotfiles/i3"): expand("~/.config/i3")
}

for src, dst in symlinks.items():
    try:
        move(dst, dst + ".bak")
    except FileNotFoundError:
        pass

    symlink(src, dst)
