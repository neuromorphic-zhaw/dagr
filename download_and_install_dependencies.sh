#! /usr/bin/env bash
DAGR_DIR=$(pwd)

# Download detectron2 for its fast mAP calculation function
mkdir $DAGR_DIR/libs
cd $DAGR_DIR/libs
git clone --no-checkout git@github.com:facebookresearch/detectron2.git
cd $DAGR_DIR/libs/detectron2/
git checkout 32bd159d7263683e39bf4e87e5c4ac88bad2fd73

# Download YOLOX
cd $DAGR_DIR/libs
git clone --no-checkout git@github.com:Megvii-BaseDetection/YOLOX.git
cd $DAGR_DIR/libs/YOLOX
git checkout 618fd8c08b2bc5fac9ffbb19a3b7e039ea0d5b9a

# Download dsec-det
cd $DAGR_DIR/libs
git clone git@github.com:uzh-rpg/dsec-det.git
cd $DAGR_DIR/libs/dsec-det
git checkout f3ea48b0eebef93b2052396fd23b3d40e6ff0363

pip install -e $DAGR_DIR/libs/dsec-det
pip install -e $DAGR_DIR/libs/detectron2
pip install -e $DAGR_DIR/libs/YOLOX