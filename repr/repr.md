
## 2.


### 将版本历史可视化并进行探索
git log --graph


### 是谁最后修改了 README.md 文件？

`git log -1 --format="%an" -- .\README.md`

ans:
`yuzq`


或者使用 `--format="%ae"` 得到 email

`yuzq@sunwayworld.com`

### 最后一次修改 _config.yml 文件中 collections: 行时的提交信息是什么？


见  [`step/get_msg_of_changed_line.sh`](step/get_msg_of_changed_line.sh)

ans:
`Redo lectures as a collection`

## 4.

>
从 GitHub 上克隆某个仓库，修改一些文件。当您使用 git stash 会发生什么？当您执行 git log --all --oneline 时会显示什么？通过 git stash pop 命令来撤销 git stash 操作，什么时候会用到这一技巧？


### GitHub 上克隆某个仓库，修改一些文件。当使用 git stash 

会将修改存储到stash栈中， 使工作区回到最后一次提交的状态


### 当执行 git log --all --oneline 时

- git log 用于显示commit信息
- --all 选项会显示所有分支的提交历史，而不仅仅是当前分支。
- --oneline 选项会使每个提交只显示一行，通常包括提交的哈希值和提交信息。

### 通过 git stash pop 命令来撤销 git stash 操作，什么时候会用到这一技巧？

在git stash之后修改并commit后， 需要继续之前的工作时


## 6.

>
您可以通过执行 git config --global core.excludesfile ~/.gitignore_global 在 ~/.gitignore_global 中创建全局忽略规则。配置您的全局 gitignore 文件来自动忽略系统或编辑器的临时文件，例如 .DS_Store；

见 [`step/global_ignore.sh`](step/global_ignore.sh)



## 5.

>
请在 ~/.gitconfig 中创建一个别名，使您在运行 git graph 时，您可以得到 git log --all --graph --decorate --oneline 的输出结果；

见 [`step/alias.sh`](step/alias.sh)


