FROM tensorflow/tensorflow:latest-gpu-jupyter
WORKDIR /cv
COPY . .
#RUN ["cd assets; && tar -xvf *.tar.gz"]
#in assets
cd assets
cd protobuffdir/src
apt-get update
apt-get install autoconf automake libtool curl make g++ unzip
./configure
make
make check
make install
ldconfig
echo "LD_LIBRARY_PATH=/usr/local/lib/${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}" >> ~/.bashrc
echo "PATH=/usr/local/lib/${PATH:+:${PATH}}" >> ~/.bashrc

#in /cv
mkdir cocoapi
git clone https://github.com/cocodataset/cocoapi.git
cd cocoapi/PythonAPI
pip3 install cython
make
cp -r pycocotools /cv/models/research/ 

