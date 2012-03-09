#!/bin/sh
version="1.0"
modname="away"
if [ -e "dist" ]; then
	echo "ERROR: dist subdirectory exists!"
	exit 1
fi
rm -f ${modname}-${version}.tar.gz
rm -f ${modname}-${version}.zip
mkdir dist
mkdir dist/${modname}
cp depends.txt dist/${modname}/depends.txt
cp init.lua dist/${modname}/init.lua
cd dist
tar -cvz --numeric-owner --owner=0 --group=0 -f ../${modname}-${version}.tar.gz ${modname}
zip -r -9 ../${modname}-${version}.zip ${modname}
cd ..
rm dist/${modname}/depends.txt
rm dist/${modname}/init.lua
rmdir dist/away
rmdir dist
