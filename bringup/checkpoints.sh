hf download Stanford-ILIAD/prism-qwen25-extra-dinosiglip-224px-0_5b \
--repo-type model \
--local-dir /home/dainanjun/data/checkpoints/prism-qwen25-extra-dinosiglip-224px-0_5b

rm -rf pretrained_models/prism* && ln -sfn /home/dainanjun/data/checkpoints/prism-qwen25-extra-dinosiglip-224px-0_5b pretrained_models/

hf download VLA-Adapter/LIBERO-Spatial-Pro \
--repo-type model \
--local-dir /media/dainanjun/T9/checkpoints/VLA-Adapter/LIBERO-Spatial-Pro

hf download VLA-Adapter/LIBERO-Object-Pro \
--repo-type model \
--local-dir /media/dainanjun/T9/checkpoints/VLA-Adapter/LIBERO-Object-Pro

hf download VLA-Adapter/LIBERO-Goal-Pro \
--repo-type model \
--local-dir /media/dainanjun/T9/checkpoints/VLA-Adapter/LIBERO-Goal-Pro

hf download VLA-Adapter/LIBERO-Long-Pro \
--repo-type model \
--local-dir /media/dainanjun/T9/checkpoints/VLA-Adapter/LIBERO-Long-Pro

hf download VLA-Adapter/CALVIN-ABC-Pro \
--repo-type model \
--local-dir /media/dainanjun/T9/checkpoints/VLA-Adapter/CALVIN-ABC-Pro

ln -sfn /media/dainanjun/T9/checkpoints/VLA-Adapter checkpoints
