cd libxml2
emconfigure ./autogen.sh 
emconfigure ./configure --with-http=no --with-ftp=no --with-python=no --with-threads=no
emmake make
cd ..