#!/usr/bin/env bash

vimrcPath=$1
mode=$2

curPath=$(dirname $0)

normalVimModePlugs=(
	"basic"
)

goVimModePlugs=(
	"basic"
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

cat "$curPath"/header.vimrc >> $vimrcPath

for plug in ${plugs[@]}
do
	plugConfPath="$curPath"/"$plug".vimrc
	if [ -f "$plugConfPath" ]
	then
		cat "$plugConfPath" >> "$vimrcPath"
	fi
done

cat "$curPath"/footer.vimrc >> $vimrcPath
cat "$curPath"/native.vimrc >> $vimrcPath
