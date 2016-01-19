#emcc xmlsec1.bc libxmlsec1.bc libxmlsec1-openssl.bc libxml2.bc -O2 -g2 -s ASSERTIONS=2 --pre-js pre.js -o xmlsec1.js
emcc --pre-js ./pre.js -O3 libxmlsec1.bc libxml2.bc libxmlsec1-openssl.bc  xmlsec1.bc -o xmlsec1.js

./test.sh
