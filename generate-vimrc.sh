#!/bin/sh

mode=$1

normalVimModePlugs=(
	"basic"
)

goVimModePlugs=(
	"vim-go"
	"ycm"
)

if [ "$mode" == "go" ]
then       
    plugs=$goVimModePlugs
else
    plugs=$normalVimModePlugs
fi

vimrcPath=.vimrc
echo -n > $vimrcPath

cat 'header.vimrc' >> $vimrcPath


for plug in ${plugs[@]}
do
	plugConfPath="$plug".vimrc
	if [ -f "$plugConfPath" ]
	then
		cat "$plugConfPath" >> "$vimrcPath"
	fi
done

cat 'footer.vimrc' >> $vimrcPath
cat 'native.vimrc' >> $vimrcPath
