##
## Loads and combines the Bitcoin.js Library
##

# yarn install / npm install
if command -v yarn 2> /dev/null ; then
	yarn install
	echo ""
else 
	echo "Using npm install as fallback, because yarn is not installed."
	npm install
	echo ""
fi

# install command (see https://bitcoinjs.org/ for details)
echo "Load and combine library..."
node ./node_modules/browserify/bin/cmd.js -r bitcoinjs-lib -s bitcoin > ./src/bitcoinjs.original.js
cp ./src/bitcoinjs.original.js ./src/bitcoinjs.modified.js
echo "Library combined in ./src/bitcoinjs.js"
