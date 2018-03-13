set -l conf_files path variables extra
for conf_file in ~/.config/fish/functions/{$conf_files}.fish
  if test -e $conf_file
    source $conf_file
  end
end
set -e conf_files
