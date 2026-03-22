hf download openvla/modified_libero_rlds \
  --repo-type dataset \
  --local-dir /home/dainanjun/data/datasets/libero_rlds \
  # --include "libero_spatial_no_noops/*"

# ln -sfn /home/dainanjun/data/datasets/libero_rlds third_party/libero/libero/datasets

hf download zhouhongyi/calvin_abc_rlds \
  --repo-type dataset \
  --local-dir /home/dainanjun/data/datasets/calvin_abc_rlds

# mkdir -p datasets
# ln -sfn /home/dainanjun/data/datasets/libero_rlds datasets/libero_rlds
# ln -sfn /media/dainanjun/1A921EB6921E95FB/datasets/calvin_abc_rlds datasets/calvin_abc_rlds
