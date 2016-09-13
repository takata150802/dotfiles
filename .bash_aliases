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