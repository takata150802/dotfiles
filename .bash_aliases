alias rm='set -f; rmrm'
function rmrm() {
    local ch
        echo $@ | grep -Gq "^/$\| /$\|^/ \| / "
        if [ $? -eq 0 ]; then
            set +f
                echo "DONOT execute 'rm /'"
                return 1
        fi

        echo $@ | grep -q "*"
        if [ $? -eq 0 ]; then
            set +f
                ls $@
                if [ $? -ne 0 ]; then
                    return 0
                fi
                echo -n "Are you sure? [Y/n] "
                while : ; do
                    read ch
                        if [ "${ch}" = "Y" ]; then
                            command rm $@
                                return 0
                        elif [ "${ch}" = "n" ] || [ "${ch}" = "N" ]; then
                        return 1
                        else
                            echo -n "[Y/n]"
                        fi
                                done
        else
            command rm $@
                return 0
        fi
}
alias ff='xdg-open'

### tktmdfd160914 for colordiff
if [[ -x `which colordiff` ]]; then
  alias diff='colordiff -u'
else
  alias diff='diff -u'
fi

function markdown2html() {
    #pandoc -f markdown -t html5  --standalone --self-contained --mathml $1 -o $1.html
    pandoc -f markdown -t html5  --standalone --self-contained -s --mathjax=https://gist.githubusercontent.com/yohm/0c8ed72b6f18948a2fd3/raw/624defc8ffebb0934ab459854b7b3efc563f6efb/dynoload.js $1 -o $1.html
    return 0
}

alias colcsv='column -s, -t'
