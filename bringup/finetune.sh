data_name=rokae_xmate_rlds_angle
current_time=$(date +%y%m%d_%H%M%S)
log_path=logs/$data_name--$current_time.log

# uv run python -m torch.distributed.run -h

CUDA_VISIBLE_DEVICES=0 \
nohup uv run torchrun \
  --nnodes 1 \
  --nproc-per-node 1 \
vla-scripts/finetune.py \
  --vlm_path pretrained_models/prism-qwen25-extra-dinosiglip-224px-0_5b \
  --config_file_path pretrained_models/configs \
  --data_root_dir data \
  --dataset_name $data_name \
  --run_root_dir outputs \
  --use_film False \
  --num_images_in_input 2 \
  --use_proprio True \
  --use_lora True \
  --use_fz False \
  --use_minivlm True \
  --image_aug True \
  --num_steps_before_decay 5000 \
  --max_steps 6000 \
  --save_freq 1000 \
  --save_latest_checkpoint_only False \
  --merge_lora_during_training True \
  --batch_size 4 \
  --grad_accumulation_steps 4 \
  --learning_rate 2e-4 \
  --lora_rank 64 \
  --use_pro_version True \
  --wandb_entity dainj-gzhu \
  --wandb_project $data_name \
  --run_id_note $data_name--$current_time \
> $log_path 2>&1 &

tail -f $log_path
