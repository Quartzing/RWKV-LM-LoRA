#!/bin/bash
source scripts/common.sh

# Adding the following line to avoid the SSL issue during wget
# Source: https://stackoverflow.com/questions/71692354/facing-ssl-error-with-huggingface-pretrained-models
CURL_CA_BUNDLE=""
# Create model folder and download model
mkdir -p $MODEL_PATH
wget https://huggingface.co/BlinkDL/rwkv-4-raven/resolve/main/RWKV-4-Raven-3B-v10x-Eng49%25-Chn50%25-Other1%25-20230423-ctx4096.pth -P $MODEL_PATH/

# Create dataset folder and download dataset
mkdir -p $DATASET_PATH
wget https://huggingface.co/datasets/databricks/databricks-dolly-15k/resolve/main/databricks-dolly-15k.jsonl -P $DATASET_PATH/
