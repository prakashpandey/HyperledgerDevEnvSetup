echo "Make sure you are inside fabric-samples/"
cd first-network/
sleep 60
echo "generate network artifacts"
./byfn.sh -m generate

sleep 60
echo "Start network"
./byfn.sh -m up
