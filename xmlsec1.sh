cd xmlsec1
emconfigure ./configure --enable-ripemd160=no  --enable-aes=no --enable-crypto-dl=no  --enable-apps-crypto-dl=no --with-openssl=${PWD}/../openssl --with-libxslt=no --with-libxml-src=${PWD}/../libxml2
emmake make
cd ..