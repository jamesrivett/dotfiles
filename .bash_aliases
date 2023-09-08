alias lst='ls -lah'
alias dirs='dirs -v'
alias lq='ls -lh'

alias gitcache='git config --global credential.helper cache'
alias gitstash="git config credential.helper 'store'"

alias osync='onedrive --synchronize'

alias fnmode='echo 0 | sudo tee /sys/module/hid_apple/parameters/fnmode'


megasearch () {
	find / 2>&1 | grep $1;
}

looper () {
	while sleep 1;
	do $1;
	done;
}
