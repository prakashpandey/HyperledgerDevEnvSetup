echo "Downloading fabric samples"
git clone https://github.com/hyperledger/fabric-samples.git
cd fabric-samples/

echo "checking out v1.1.0"
sleep 60
git checkout v1.1.0

echo "Downloading platform specific binaries"
sleep 60
curl -sSL https://goo.gl/6wtTN5 | bash -s 1.1.0

echo "Exporting $(pwd)/bin in current path"
sleep 60
export PATH=$(pwd)/bin:$PATH


