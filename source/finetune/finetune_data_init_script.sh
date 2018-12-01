#!/bin/bash

if [ ! -f 256_ObjectCategories.tar ]; then
    echo Download the data set
    wget http://www.vision.caltech.edu/Image_Datasets/Caltech256/256_ObjectCategories.tar
    echo data set loaded
fi

if [ ! -d 256_ObjectCategories/ ]; then
    echo decompress the data
    tar -xf 256_ObjectCategories.tar
    echo decompressing ready
fi

mkdir -p caltech_256_train_60
for i in 256_ObjectCategories/*; do
    c=`basename $i`
    mkdir -p caltech_256_train_60/$c
    for j in `ls $i/*.jpg | shuf | head -n 60`; do
        mv $j caltech_256_train_60/$c/
    done
done

### You might need to change the path of these, or perhaps downloas the im2rec.py -script
# python ~/mxnet/tools/im2rec.py --list --recursive caltech-256-60-train caltech_256_train_60/
# python ~/mxnet/tools/im2rec.py --list --recursive caltech-256-60-val 256_ObjectCategories/
# python ~/mxnet/tools/im2rec.py --resize 256 --quality 90 --num-thread 16 caltech-256-60-val 256_ObjectCategories/
# python ~/mxnet/tools/im2rec.py --resize 256 --quality 90 --num-thread 16 caltech-256-60-train caltech_256_train_60/

echo resize the pictures

python ~/anaconda3/lib/python3.6/site-packages/mxnet/im2rec.py --list --recursive caltech-256-60-train caltech_256_train_60/
python ~/anaconda3/lib/python3.6/site-packages/mxnet/im2rec.py --list --recursive caltech-256-60-val 256_ObjectCategories/
python ~/anaconda3/lib/python3.6/site-packages/mxnet/im2rec.py --resize 256 --quality 90 --num-thread 16 caltech-256-60-val 256_ObjectCategories/
python ~/anaconda3/lib/python3.6/site-packages/mxnet/im2rec.py --resize 256 --quality 90 --num-thread 16 caltech-256-60-train caltech_256_train_60/
