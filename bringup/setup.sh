# # Fix calvin environment
# sed -i '6c \\turl = https://github.com/Daniel-Dainj/calvin' .gitmodules
# git submodule sync
# git -c "submodule.third_party/calvin.branch=main" submodule update --remote --rebase third_party/calvin
# # git add third_party/libero .gitmodules
# # git commit -m "修正子模块 libero"
# # # git submodule update --init --recursive
# # # git submodule update --remote third_party/libero
# # # git -C third_party/libero pull origin main
# # # git submodule update --init --recursive --remote --rebase third_party/libero

# Add submodules
# git submodule add https://github.com/Daniel-Dainj/LIBERO third_party/libero
# git submodule add https://github.com/Daniel-Dainj/calvin third_party/calvin
# git submodule update --init --recursive

# Set Python version to 3.11
echo "3.11" > .python-version

# Sync the environment
uv sync
