# dotfiles

My dotfiles. They're configured how I like them.

## Usage

### Deal with dependencies.

 - [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)  
It's recommended to place the `.zsh` file at `/usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh`. However, you may change the last line of `.zshrc` if you (or your package manager) prefer to put it somewhere else.
 - [polybar](https://polybar.github.io)

Optional dependancies:
 - [xdotool](https://www.semicomplete.com/projects/xdotool/)  
 Used in many of my scripts for automated keyboard/mouse input
 - [libinput-gestures](https://github.com/bulletmark/libinput-gestures)  
 These dotfiles have a config that allows you to switch between workspaces with a three- or four-finger swipe
 - [ramspeed](https://github.com/cruvolo/ramspeed-smp)  
 Very much optional, used in my memory testing script

### Actual installation
Clone the repo
```
cd ~
git clone https://github.com/willitcode/dotfiles
```

Bring the dotfiles out of the cloned folder
```
cd dotfiles
cp -r ./.* ~ && cp -r ./* ~
```

Remove the .git folder that got copied out with the dotfiles (you DO NOT want a git repo in your home folder, that'll cause all sorts of problems)
```
cd ~
sudo rm -r .git # We need sudo here because some files in the .git folder are write-protected from normal users for some reason
```

## Contributing

Open a pull request! That's what open source is all about!

These are just the way *I* like them, so I may not accept a pull request simply because I don't like the changes it makes. However, absolutely feel free to fork the repo and change it to your liking. Again, that's what FOSS is all about!
