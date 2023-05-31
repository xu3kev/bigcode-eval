export HF_HOME=/scratch/wl678/huggingface
export CUDA_VISIBLE_DEVICES=0,1
accelerate launch  main.py \
  --model bigcode/santacoder \
  --max_length_generation 512\
  --tasks humaneval \
  --n_samples 1 \
  --batch_size 1 \
  --temperature 0.2 \
  --allow_code_execution \
  --trust_remote_code \
  --save_generations



export HF_HOME=/scratch/wl678/huggingface
export CUDA_VISIBLE_DEVICES=0,1
accelerate launch  main.py \
  --model bigcode/santacoder \
  --max_length_generation 512\
  --tasks humaneval_io \
  --n_samples 1 \
  --batch_size 1 \
  --temperature 0.8 \
  --save_generations