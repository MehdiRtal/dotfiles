set -g fish_greeting
set -gx VIRTUAL_ENV_DISABLE_PROMPT 1
fish_add_path $HOME/.krew/bin

if status is-interactive
    fzf --fish | source
    direnv hook fish | source
    abbr -a cat bat
    abbr -a ls eza
    abbr -a k kubectl
    abbr -a nano micro
    abbr -a npx bunx
    abbr -a dig drill
end

function add_newline --on-event fish_postexec
   echo
end

function fish_prompt
    echo (set_color --bold cyan)(prompt_pwd)(set_color normal)
    printf '%s❯ %s' (set_color --bold green) (set_color normal)
end
