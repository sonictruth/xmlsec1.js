cd openssl
make clean
./Configure BSD-x86 shared -no-asm enable-deprecated -no-apps  -no-ssl2  -no-hw -no-ssl3 -no-asm -no-threads -no-dso 
# -no-shared shared
sed -i -e 's/gcc/emcc/g' Makefile
sed -i -e 's/-O3/ /g' Makefile

emmake make
rm -rf lib
mkdir lib
cp libssl* lib
cp libcrypt* lib
cd ..
