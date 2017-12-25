#!/bin/bash
 
cd `dirname $0`
 
files=()
files+=('../src/regist.md')
files+=('../src/remove.md')
files+=('../src/search.md')
files+=('../src/list.md')

echo 'FORMAT: 1A' > ../api.md || exit $?
cat ${files[@]} | sed -e '/^FORMAT: 1A/d' >> ../api.md || exit $?
../node_modules/.bin/aglio -i ../api.md -o ../output/api.html || exit $?
 
exit 0
