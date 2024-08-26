dir="missing-semester-cn.github.io"  ## cloned repo path
basefile=_config.yml
file="$dir/$basefile"
# get line number
n=`grep -n '^collections:$' "$file" | cut -d : -f 1`
echo $n

function getLastChangeMsg(){
    set -e
    loca dir="$1" basefile="$2" n="$3" commithash
    pushd "$dir"
    commithash=`git blame -L $n "$basefile" | cut -d ' ' -f 1`
    # f wanna se the whole commit info
    # git show "$commithash"
    git log -1 --format='%s'  # only output commit message
    popd
}
getLastChangeMsg "$dir" "$basefile" "$n"
