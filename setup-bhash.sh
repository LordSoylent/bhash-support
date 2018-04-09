# download wallet
wget https://www.dropbox.com/s/mufsbw17eg34cxl/bhash-2.0.4.2-linux-x86_64.tar.gz?dl=1 -O bhash.tar.gz

# extract contents
tar -xzvf bhash.tar.gz

# reset data dir
rm -rf ~/.bhash
mkdir ~/.bhash

# create bhash.conf
echo "server=1" >> ~/.bhash/bhash.conf
echo "rpcuser=bhashuser" >> ~/.bhash/bhash.conf
echo "rpcpaswd=anypass" >> ~/.bhash/bhash.conf
echo "maxconnections=200" >> ~/.bhash/bhash.conf

# start bhash server in background mode
chmod +x bhashd
nohup ./bhashd &


# verify server is active
sleep 3
./bhash-cli getinfo		# verify that version=2000402 and protocolversion=70851

# add seeder nodes
./bhash-cli addnode bhash-n1.coinseed.online:17652 add
./bhash-cli addnode bhash-n2.coinseed.online:17652 add
./bhash-cli addnode bhash-n3.coinseed.online:17652 add
./bhash-cli addnode bhash-n4.coinseed.online:17652 add
./bhash-cli addnode bhash-n5.coinseed.online:17652 add
./bhash-cli addnode bhash-n6.coinseed.online:17652 add
./bhash-cli addnode bhash-n7.coinseed.online:17652 add
./bhash-cli addnode bhash-n8.coinseed.online:17652 add


