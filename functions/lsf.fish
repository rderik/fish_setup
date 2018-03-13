function lsf -d "Only list normal files"
  ls -l $argv | grep "^-"
end

