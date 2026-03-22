hf download openvla/modified_libero_rlds \
  --repo-type dataset \
  --local-dir $HOME/vla_workspace/datasets/libero_rlds

# ln -sfn $HOME/vla_workspace/datasets/libero_rlds third_party/libero/libero/datasets

hf download zhouhongyi/calvin_abc_rlds \
  --repo-type dataset \
  --local-dir $HOME/vla_workspace/datasets/calvin_abc_rlds \
  --exclude="*0010"{0,1}"-of-00512"

wget -c -P $HOME/vla_workspace/datasets/calvin_abc_rlds https://hf-mirror.com/datasets/zhouhongyi/calvin_abc_rlds/resolve/main/calvin_abc-train.tfrecord-00100-of-00512
wget -c -P $HOME/vla_workspace/datasets/calvin_abc_rlds https://hf-mirror.com/datasets/zhouhongyi/calvin_abc_rlds/resolve/main/calvin_abc-train.tfrecord-00101-of-00512

# mkdir -p datasets
# ln -sfn $HOME/vla_workspace/datasets/libero_rlds datasets/libero_rlds
# ln -sfn $HOME/vla_workspace/datasets/calvin_abc_rlds datasets/calvin_abc_rlds
