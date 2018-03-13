# Fish setup for OSX

You'll find in this repo fish functions and a basic structure that is simple and anyone can use and build from.

Fish configuration is structured in the following functions:

path      - were all my path set up is done
variables - this is were all my variables are setup
extra     - extra configurations like rbenv, etc

they are called on my `config.fish` script.

```fish
 set -l conf_files path variables extra
 for conf_file in ~/.config/fish/functions/{$conf_files}.fish
   if test -e $conf_file
     source $conf_file
   end
 end
 set -e conf_files
```

This setup uses [fisherman](https://fisherman.github.io/) to manage fish plugins.

Follow the instructions in the link to install fisherman.

The normal installation of this setup would be to clone it first then run the `create_fish_function_links.fish` script to create the links

```fish
git clone /Users/derik/Documents/Development/github/fish_setup/copy-ls.fish [PATH_YOU_WISH_TO_INSTALL_THIS_SETUP]
```

```fish
source create_fish_function_links.fish
```

I would suggest to make a copy if your `config.fish` before so you can go back to that configuration.

## Uninstall the linked functions

they are just links so just delete them you can do the following:

```fish
cd $HOME/.config/fish/functions
```

```fish
rm copy-ls.fish extra.fish fish_mode_prompt.fish fish_prompt.fish fish_right_prompt.fish la.fish ll.fish lrt.fish lsd.fish lsf.fish path.fish tmux.fish variables.fish
```



## Aliases

In this setup there are no aliases created for fish every alias has been converted into a fish function taking advantage of the autoloading, you can check this [link](https://github.com/jorgebucaran/fish-shell-cookbook#whats-wrong-with-aliases) that does a better job on explaining the why, so you'll find the alises on this repo but as functions inside the functions directory.


