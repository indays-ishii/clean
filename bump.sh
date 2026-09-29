#!/bin/sh
# 公開の前に版の目印（BUILD）を書き換える。開いているスマホの画面が、次に開いたとき自動で新しい版に読み直す
v=$(date +%Y-%m-%d-%H%M%S)
sed -i '' "s/^  const BUILD = '[0-9-]*';/  const BUILD = '$v';/" index.html admin/index.html
grep -h "BUILD = '" index.html admin/index.html
