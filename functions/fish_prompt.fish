# got ideas for my prompt from:
# https://github.com/nesl247/fish-theme-dracula/blob/master/fish_prompt.fish
function fish_prompt
  # Cache exit status
  set -l last_status $status

  # Just calculate these once, to save a few cycles when displaying the prompt
  if not set -q __fish_prompt_hostname
    set -g __fish_prompt_hostname (hostname|cut -d . -f 1)
  end
  if not set -q __fish_prompt_char
    switch (id -u)
    case 0
      set -g __fish_prompt_char '#'
    case '*'
      set -g __fish_prompt_char '$'
    end
  end

  # Configure colors for prompt
  set -l normal (set_color normal)
  set -l white (set_color FFFFFF)
  set -l turquoise (set_color 8be9fd)
  set -l orange (set_color ffb86c)
  set -l hotpink (set_color ff79c6)
  set -l blue (set_color 8be9fd)
  set -l limegreen (set_color 50fa7b)
  set -l purple (set_color bd93f9)

   # Configure fish colors
  set -g fish_color_error ff5555 --bold

  # Configure __fish_git_prompt
  set -g __fish_git_prompt_char_stateseparator ' '
  set -g __fish_git_prompt_color 8be9fd
  set -g __fish_git_prompt_color_flags ffb86c
  set -g __fish_git_prompt_color_prefix white
  set -g __fish_git_prompt_color_suffix white
  set -g __fish_git_prompt_color_stagedstate 50fa7b
  set -g __fish_git_prompt_color_dirtystate ffb86c
  set -g __fish_git_prompt_color_untrackedfiles ff5555
  set -g __fish_git_prompt_color_cleanstate 50fa7b
  set -g __fish_git_prompt_showstagedstate true
  set -g __fish_git_prompt_showdirtystate true
  set -g __fish_git_prompt_showuntrackedfiles true
  set -g __fish_git_prompt_showstashstate true
  set -g __fish_git_prompt_show_informative_status true

  set last_status $status

  set_color $fish_color_cwd

  printf "$purple%s $blue%s " (basename $PWD) $__fish_prompt_char

  set_color normal
end
