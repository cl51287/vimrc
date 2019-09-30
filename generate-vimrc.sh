#!/bin/sh

vimrcPath=$1
mode=$2

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
