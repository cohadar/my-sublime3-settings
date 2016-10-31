#!/bin/sh
if [ "$#" -ne 1 ]; then
    echo "Usage: new_snippet.sh NAME"
    exit 2
fi
if [ -f $1.sublime-snippet ] ; then
	echo "file already exists: $1.sublime-snippet"
	exit 3
fi
cat <<EOT >> $1.sublime-snippet
<snippet>
    <content><![CDATA[
    // add content here
]]></content>
    <tabTrigger>$1</tabTrigger>
    <scope>source.go</scope>
    <description>$1</description>
</snippet>
EOT

subl $1.sublime-snippet