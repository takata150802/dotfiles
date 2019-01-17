alias pco='git checkout `git branch | peco`'

# pecoでsshするalias - Qiita http://qiita.com/d6rkaiz/items/46e9c61c412c89e84c38
alias s='ssh $(grep "^Host" ~/.ssh/config|peco|awk "{print \$2}")'
