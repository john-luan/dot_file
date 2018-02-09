ZSH_THEME="agnoster"
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
# If you come from bash you might have to change your $PATH.
# oxport PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
export TERM=xterm-256color
# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="robbyrussell"
ZSH_THEME="ys"

# 如果想要大小写敏感，可以取消注释下面的一行
# CASE_SENSITIVE="true"

# 如果想要连接符不敏感，可以取消注释下面的一行。_ 和 - 将可以互换
# HYPHEN_INSENSITIVE="true"

# 如果不想要自动更新，可以取消注释下面的一行
# DISABLE_AUTO_UPDATE="true"

# 自动更新的时间间隔，单位是天，这里设置 30 天更新一次
 export UPDATE_ZSH_DAYS=7

# 如果不想要 ls 命令输出带颜色，可以取消注释下面的一行
# DISABLE_LS_COLORS="true"

# 是否禁止更改终端标题,不要禁止,不然所有终端tab只显示zsh了,而不随着目录的改变而改变显示
# DISABLE_AUTO_TITLE="true"

# 自动纠正命令,不启用,不怎么好用
# ENABLE_CORRECTION="true"

# 按tab键补全命令的时候,如果没什么可补全的就会出现三个红点,更人性化显示，这里我们启用
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"
export  LD_LIBRARY_PATH="/root/.vim/bundle/gdbmgr/gdbmgr/src:default"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
#if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
#else
#  export EDITOR='mvim'
#fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"


# 启用 cd 命令的历史纪录，cd -[TAB]进入历史路径
setopt AUTO_PUSHD
# 相同的历史路径只保留一个
setopt PUSHD_IGNORE_DUPS
#在命令前添加空格，不将此命令添加到纪录文件中
setopt HIST_IGNORE_SPACE

# 启用自动 cd，输入目录名回车进入目录
setopt AUTO_CD
# 扩展路径 etc: /v/c/p/p => /var/cache/pacman/pkg
setopt complete_in_word

# vim风格 键绑定
bindkey -v


PROMPT="%B%{[32m%}%n%(?. . %{[31m%}%? )%{[m%}> %{[1;34m%}%~ %{%}%# %b"

alias -s c='vim'

alias cp="cp -iv"
alias fw="http_proxy=http://localhost:8123" # fuck wall
alias grep="grep -i --color"
alias hgd="hexo g 2>&1 & ; hexo d 2>&1 &"
alias l="ls -hl --color"
alias la="ls -hla --color"
alias lg="ls -hl --color | grep"
alias wl='ll | wc -l' # 目录下有多少文件
alias lsr="ll -Sr" # 按照日期排序
alias lsl="ll -Sl"
alias ltr="ll -tr" # 按照时间排序
alias mv="mv -iv"
alias rm="rm -i"
alias sz="du -sh" #查看目录的大小

# 指定path到script来运行脚本而不是用alias
#alias exit="~/script/save_status_exit.sh"
#alias mw="" # make work environment. It will load last time status.
# 嵌入式相关
alias opst="openocd -f board/stm32f429discovery.cfg"

# 进入目录并列出文件
cdl() { cd "$@" && pwd ; ls -al; }

alias ..="cdl .."
alias cd..='cdl ..'

alias psg="ps aux | grep -v grep | grep -i --color" # 查看进程信息
alias hg="history | grep"
alias netp="netstat -tulanp"  # 查看服务器端口连接信息
alias lv="vim -c \"normal '0\""  # 编辑vim最近打开的文件
alias tf='tail -f'  # 快速查看文件末尾输出
alias v="vim"
alias e="emacs"
alias x="exit"

# 自动在文件末尾加上 .bak-日期 来备份文件，如 bu nginx.conf
#bak() { cp "$@" "$@.bak"-`date +%y%m%d`; echo "`date +%Y-%m-%d` backed up $PWD/$@"; }

# 级联创建目录并进入，如 mcd a/b/c
mcd() { mkdir -p $1 && cd $1 && pwd ; }

# 查看去掉#注释和空行的配置文件，如 nocomm /etc/squid/squid.conf
# alias nocomm='grep -Ev '\''^(#|$)'\'''

# 解压所有归档文件工具
function extract {
	if [ -z "$1" ]; then
		# display usage if no parameters given
		echo "Usage: extract <path/file_name>.<zip|rar|bz2|gz|tar|tbz2|tgz|Z|7z|xz|ex|tar.bz2|tar.gz|tar.xz>"
	else
		if [ -f $1 ] ; then
			# NAME=${1%.*}
			# mkdir $NAME && cd $NAME
			case $1 in
				*.tar.bz2)   tar xvjf $1    ;;
				*.tar.gz)    tar xvzf $1    ;;
				*.tar.xz)    tar xvJf $1    ;;
				*.lzma)      unlzma $1      ;;
				*.bz2)       bunzip2 $1     ;;
				*.rar)       unrar x -ad $1 ;;
				*.gz)        gunzip $1      ;;
				*.tar)       tar xvf $1     ;;
				*.tbz2)      tar xvjf $1    ;;
				*.tgz)       tar xvzf $1    ;;
				*.zip)       unzip $1       ;;
				*.Z)         uncompress $1  ;;
				*.7z)        7z x $1        ;;
				*.xz)        unxz $1        ;;
				*.exe)       cabextract $1  ;;
				*)           echo "extract: '$1' - unknown archive method" ;;
			esac
		else
			echo "$1 - file does not exist"
		fi
	fi
}

