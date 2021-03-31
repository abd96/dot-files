#!/bin/sh 
echo '|-> Copying XmodMap'
# cp "$PWD/.Xmodmap_GlobalvimStyle" /home/$USER 

echo '|-> Copying zshrc'
#cp "$PWD/.zshrc" /home/$USER 

echo '|-> Copying tmux.conf'
#cp "$PWD/.tmux.conf" /home/$USER 

dir="/home/$USER/.config/nvim/" 
if [ -d "$dir" ]; then 
    echo "Found nvim config directory, copying init.vim"
else
    echo "Couldn't find nvim directory in home, creating it"
    mkdir "$dir"
    echo "Done creating nvim config directory, now copying init.vim"
fi
cp "$PWD/init.vim" /home/$USER
echo "Copying coc Settings to config directory"
cp "/$PWD/coc-settings.json" $dir/. 
