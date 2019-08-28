#!/bin/sh


normalVimPlugs=(
	"vim-go"
	"ycm"
	"basic"
)

vimrcPath=.vimrc
echo -n > $vimrcPath

cat 'header.vimrc' >> $vimrcPath


for plug in ${normalVim[@]}
do
	plugConfPath="$plug".vimrc
	if [ -f "$plugConfPath" ]
	then
		cat "$plugConfPath" >> "$vimrcPath"
	fi
done

cat 'footer.vimrc' >> $vimrcPath
