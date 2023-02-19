if status is-interactive
    # Commands to run in interactive sessions can go here
		and not set -q TMUX
		exec tmux
end

set -U fish_greeting

starship init fish | source
