# peco/percolでCUIなスニペットツールを作ってみる http://blog.glidenote.com/blog/2014/06/26/snippets-peco-percol/
# ~/.snippetsによく使うコマンドを書く
SNIPPETS_FILE=${HOME}/dotfiles/peco/snippets
function peco-snippets() {
    local line
    local snippet
    echo "aaaaa"

    if [ ! -e ${SNIPPETS_FILE} ]; then
        return 1
    fi
    echo "aaaaa"

    declare l=$(grep -v "^#" ${SNIPPETS_FILE} | peco --query "$READLINE_LINE" | sed "s/^\[.*\] *//g")
    READLINE_LINE="$l"
    READLINE_POINT=${#l}

}
bind -x '"\C-p":peco-snippets'
