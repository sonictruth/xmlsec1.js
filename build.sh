#
# Downloading packages
#
rm -rf openssl
rm -rf libxml2
rm -rf xmlsec1
mkdir openssl
mkdir libxml2


git clone -b OpenSSL_0_9_8-stable --single-branch https://github.com/openssl/openssl.git openssl
git clone git://git.gnome.org/libxml2 libxml2
cd libxml2
git checkout tags/v2.9.1
cd ..
wget http://www.aleksey.com/xmlsec/download/xmlsec1-1.2.20.tar.gz --no-check-certificate
tar -xvf xmlsec1-1.2.20.tar.gz 
mv xmlsec1-1.2.20 xmlsec1

#
# Building
#
./openssl.sh
./libxml2.sh
./xmlsec1.sh

cp ./xmlsec1/apps/.libs/xmlsec1 ./xmlsec1.bc
cp ./xmlsec1/src/.libs/libxmlsec1.so.1.2.20 ./libxmlsec1.bc
cp ./xmlsec1/src/openssl/.libs/libxmlsec1-openssl.so.1.2.20 ./libxmlsec1-openssl.bc
cp ./libxml2/.libs/libxml2.so.2.9.1 ./libxml2.bc

./final.sh
