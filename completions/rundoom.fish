function _complete_rundoom
    if test -f $RUNDOOMPRESETS
        jq -r 'keys[]' $RUNDOOMPRESETS
    end
end
complete -c rundoom -f -s p -ra '(_complete_rundoom)'