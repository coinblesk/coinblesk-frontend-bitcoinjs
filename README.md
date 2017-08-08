# coinblesk-frontend-bitcoinjs
> The Bitcoin.JS wrapper project for [`coinblesk-frontend`](https://github.com/coinblesk/coinblesk-frontend`)

The Bitcoin.JS library does currently (v3.1.1) not fully support the Bitcoin [BIP-65 `OP_CHECKLOCKTIMEVERIFY`](https://github.com/bitcoin/bips/blob/master/bip-0065.mediawiki). To approach that and to separate the building process of the Bitcoin.JS library from the actual Coinblesk project, this Bitcoin.JS wrapper was created. 

To support updates in an easy manner, there are two scripts provided.

## Development
There are two folders available: `/src` and `/dist`. The source folder contains two complete Bitcoin.JS scripts. One should be the original script (`src/bitcoinjs.original.js` and the other one is a copy of it, which was then modified to approach BIP-65. This allows for an easy comparison between the files. When there is an update, you can easily move the necessary code.

### Update
  * Update the Bitcoin.JS version in the `package.json` and run `yarn install`
  * Run the following script:

        bash script.load-and-combine.sh

  * This script replaces **both** the `bitcoinjs.original.js` and the `bitcoinjs.modified.js` files in `/src` with the newest version of Bitcoin.JS
  * Modify the `bitcoinjs.modified.js` to approach the changes of BIP-65.
  * Run the following script:
  
        bash script.release.sh
  
  * This script creates a minified version of the `bitcoinjs.modified.js` in the `/dist` folder.
  * Push those changes to GitHub
  * Make sure, that `coinblesk-frontend` takes the newest version of this dependency (there are no versions, but only a link to GitHub). It's probably the easiest to just delete this folder in the `node_modules` of `coinblesk-frontend` &ndash; or maybe even the full `node_modules` folder. A simple `yarn install` won't be enough.
