set -g fish_greeting
set -gx VIRTUAL_ENV_DISABLE_PROMPT 1
fish_add_path $HOME/.krew/bin

if status is-interactive
    fzf --fish | source
    direnv hook fish | source
    abbr -a k kubectl
    abbr -a nano fresh
end

function add_newline --on-event fish_postexec
   echo
end

function fish_prompt
    echo (set_color --bold cyan)(prompt_pwd)(set_color normal)
    printf '%s❯ %s' (set_color --bold green) (set_color normal)
end
