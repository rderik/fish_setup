#!/usr/bin/env fish
set -l local_function_files copy-ls extra fish_mode_prompt fish_prompt fish_right_prompt la ll lrt lsd lsf path tmux variables

for local_function_file in $local_function_files 
  ln -s "$PWD/functions/$local_function_file.fish" $HOME/.config/fish/functions/
end
ln -s $PWD/config.fish $HOME/.config/fish/
