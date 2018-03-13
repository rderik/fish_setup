function lsd --description 'List only directories'
  ls -l $argv | grep "^d"
end

