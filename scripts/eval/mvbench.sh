#!/bin/bash

MODEL_PATH="/data/vlm/zxj/result/llava_video_factory-11.27/tiny-llava-Qwen2.5-3B-siglip-so400m-patch14-384-base-finetune"
MODEL_NAME="tiny-llava-Qwen2.5-3B-siglip-so400m-patch14-384-base-finetune"
EVAL_DIR="/data/vlm/zxj/data/MVBench"

python -m tinyllava.eval.eval_mvbench \
    --model-path $MODEL_PATH \
    --image-folder $EVAL_DIR/video \
    --question-file $EVAL_DIR/json \
    --answers-file $EVAL_DIR/answers/$MODEL_NAME.jsonl \
    --temperature 0 \
    --conv-mode phi