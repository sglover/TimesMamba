# Create the conda environment manually, and then run the script.
#
# conda create -n timesmamba python=3.11 -y
# conda activate timesmamba

# torch version 2.1.x and CUDA version 12.1 are required for causal-conv1d==1.1.0
pip install torch==2.1.2 --index-url https://download.pytorch.org/whl/cu121
pip install "numpy<2"
# pip version < 25.3
pip install "causal-conv1d==1.1.0"
# pip version < 25.3
pip install "mamba-ssm==1.1.0"
pip install packaging
pip install pandas
pip install scikit-learn
pip install matplotlib

# reformer-pytorch uses a newer version of pytorch, and the pytorch's cuda version
# is incompatible with causal-conv1d==1.1.0.
# Please create a separate environment for reformer.
#
# pip install reformer-pytorch
