alias lst='ls -lah'
alias dirs='dirs -v'
alias lq='ls -lh'

alias gitcache='git config --global credential.helper cache'

alias fnmode='echo 0 | sudo tee /sys/module/hid_apple/parameters/fnmode'

alias installDiscord='\ 
	curl -L "https://discord.com/api/download/stable?platform=linux&format=deb" -o $HOME/discord.deb &&\
	sudo dpkg -i $HOME/discord.deb &&\
	rm $HOME/discord.deb\
'


megasearch () {
	find / 2>&1 | grep -i '$1';
}

looper () {
	while sleep 1;
	do $1;
	done;
}

gcp () {
	git add -Af &&\
	git commit -m "$1" &&\
	git push
}

compressMp4 () {
	find . -iname '*.mp4' | xargs -I {} ffmpeg -i {} -b:v $1 {}.compressed.MP4;
	for file in ./*.MP4*.MP4; do 
		mv "$file" "${file%.MP4*.MP4}.compressed.MP4"; 
	done
}

rmcarriage() { sed 's/\r//g' $1 | tee $1; }
