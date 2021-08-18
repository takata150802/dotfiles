peco-select-tmux-session () {
    session=$(tmux ls | peco | cut -d: -f 1)
    if [ -n "$session" ] ; then
        tmux at -t "$session"
    fi
}


bind -x '"\C-t":peco-select-tmux-session'
