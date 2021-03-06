#!/bin/bash

# Update data packages
cd data
rm *.tar.gz
tar -zcf tensorflow.tar.gz dreamer.ipynb tensorflow_*.sh
tar -zcf matlab1520.tar.gz matlab1520_*.sh golden.jpg Tutorial*.ipynb circle.png
cd ..

# Copy server and data to the VM
#ssh sven2guest@vm rm -rf /home/sven2guest/ipyccv
scp -r ./ sven2guest@vm:/home/sven2guest/ipyccv

