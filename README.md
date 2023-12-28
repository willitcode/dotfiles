# dotfiles

My dotfiles. They're configured how I like them.

## Usage

Deal with dependencies.

[zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
It's recommended to place the `.zsh` file at `/usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh`. However, you may change the last line of `.zshrc` if you (or your package manager) prefer to put it somewhere else.

There is some config in here for KDE, it's honestly a bit of a mess. One of these days I'll get around to setting up Polybar and that should fix most of the issues.

Clone the repo
```
cd ~
git clone https://github.com/NaCl10/dotfiles
```

Bring the dotfiles out of the cloned folder
```
cd dotfiles
cp ./.* ~
```

Remove the .git folder that got copied out with the dotfiles (you DO NOT want a git repo in your home folder, that'll cause all sorts of problems)
```
cd ~
sudo rm -r .git
```

## Contributing

Open a pull request! That's what open source is all about!

These are just the way *I* like them, so I may not accept a pull request simply because I don't like the changes it makes. However, absolutely feel free to fork the repo and change it to your liking. Again, that's what FOSS is all about!
