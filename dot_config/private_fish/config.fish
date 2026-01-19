if status is-interactive
    set -g fish_greeting
    abbr -a ls lsd
    abbr -a docker podman
    starship init fish | source
    fzf --fish | source
end
