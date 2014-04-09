#!/bin/bash
PACKAGE_NAME=binary-search
VERSION=1.1.1
npm install ${PACKAGE_NAME}@${VERSION}
cp node_modules/${PACKAGE_NAME}/index.js ${PACKAGE_NAME}.js
rm -rf node_modules
echo $VERSION
sed -e s/@VERSION@/$VERSION/g README.md.in > README.md
sed -e s/@VERSION@/$VERSION/g kanso.json.in > kanso.json 

