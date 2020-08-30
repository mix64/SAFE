#!/bin/sh

echo "usage: ./freeze_graph MODEL_DIR FREEZED_NAME"

MODEL_DIR=$1
FREEZED_NAME=$2

freeze_graph --input_meta_graph $MODEL_DIR/checkpoints/model.meta \
             --output_graph $FREEZED_NAME \
             --output_node_names Embedding1/dense/BiasAdd \
             --input_bin \
             --input_checkpoint $MODEL_DIR/checkpoints/model
