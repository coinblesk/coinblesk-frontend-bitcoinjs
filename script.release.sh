##
## Creates a uglified version of the source file in /src
##

echo "Create uglified library..."
node ./node_modules/uglify-js/bin/uglifyjs ./src/bitcoinjs.modified.js > ./dist/bitcoinjs.min.js
echo "Library uglified into to ./dist/bitcoinjs.min.js"