# export MSYS_NO_PATHCONV=1
# export MSYS2_ARG_CONV_EXCL="*"
export PATH="/c/Users/AMD/anaconda3:$PATH"
export PATH="/c/Users/AMD/anaconda3/Scripts:$PATH"
export PYTHON_BIN_PATH=/c/Users/AMD/anaconda3/python.exe
export PYTHON_LIB_PATH=/c/Users/AMD/anaconda3/Lib/site-packages
export PYTHON_DIRECTORY=/c/Users/AMD/anaconda3/Scripts
export BAZEL_SH=/c/msys64/usr/bin/bash.exe
export BAZEL_VS="/c/Program Files (x86)/Microsoft Visual Studio/18/BuildTools"
export BAZEL_VC="/c/Program Files (x86)/Microsoft Visual Studio/18/BuildTools/VC"
export BAZEL_LLVM="/c/Program Files/LLVM"
export PATH="/c/Program Files/LLVM/bin:$PATH"
export PATH="/c/Program Files/NVIDIA GPU Computing Toolkit/CUDA/v13.2/bin:$PATH"
export PATH="/c/Program Files/NVIDIA GPU Computing Toolkit/CUDA/v13.2/extras/CUPTI/lib64:$PATH"
bazel build --repository_cache=/e/tensorflow_cache --disk_cache=/e/tensorflow_cache --test_tmpdir=/e/tensorflow_cache --config=win_clang --config=cuda_wheel --config=opt --define=no_tensorflow_py_deps=true --repo_env=TF_PYTHON_VERSION=3.13 --repo_env=USE_PYWRAP_RULES=1 --repo_env=TF_CUDA_COMPUTE_CAPABILITIES=7.5 //tensorflow/tools/pip_package:wheel --repo_env=WHEEL_NAME=tensorflow-gpu