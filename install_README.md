build in the following order

docker build -t protobuff:1.0 -f Dockerfile_protobuff .

docker build -t protobuff_cocoapi:1.0 -f Dockerfile_protobuff_cocoapi .

docker build -t tfod:1.0 -f Dockerfile_tfod .