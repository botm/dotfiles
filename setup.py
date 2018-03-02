#!/usr/bin/python

from os import symlink
from os.path import expanduser as expand

symlinks = {
    expand("~/dotfiles/.vim/"): expand("~/.vim"),
    expand("~/dotfiles/.vimrc"): expand("~/.vimrc"),
    expand("~/dotfiles/.zshrc"): expand("~/.zshrc"),
    expand("~/dotfiles/ranger"): expand("~/.config/ranger"),
    expand("~/dotfiles/termite"): expand("~/.config/termite"),
    expand("~/dotfiles/i3"): expand("~/.config/i3")
}

for src, dst in symlinks.items():
    symlink(src, dst)
