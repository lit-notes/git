dir="missing-semester-cn.github.io"  ## cloned repo path
basefile=_config.yml
file="$dir/$basefile"
# 获得 行数
n=`grep -n '^collections:$' "$file" | cut -d : -f 1`
echo $n

pushd "$dir"
commithash=`git blame -L $n "$basefile" | cut -d ' ' -f 1`
# 如果想查看整个commit
# git show "$commithash"
git log -1 --format='%s'  # 只输出 commit message
popd
