function _complete_rundoom
    if test -f $RUNDOOMPRESETS
        jq -r 'keys[]' $RUNDOOMPRESETS
    end
end
complete -c rundoom -a '(_complete_rundoom)' -f