cd ~
for f in $(ls .config); do
  if [ ! -e dotfiles/.config/$f ]; then
    mkdir -p dotfiles/.config
    mv .config/$f dotfiles/.config/
  fi
done
cd ~/dotfiles
stow . --adopt
