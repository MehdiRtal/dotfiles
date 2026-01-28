if status is-interactive
    set -g fish_greeting
    abbr -a ls lsd
    set -gx PATH $PATH $HOME/.krew/bin
    starship init fish | source
    fzf --fish | source
end
