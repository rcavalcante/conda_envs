cd ~/

wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh

bash Miniconda3-latest-Linux-x86_64.sh

conda config --add channels bioconda
conda config --add channels conda-forge
conda config --add channels r

cd ~/repos/conda_envs

conda update -n base -c defaults conda

conda env create -f snakemake.yaml -n snakemake
conda env create -f watermelon.yaml -n watermelon
conda env create -f hisat_stringtie.yaml -n hisat_stringtie
conda env create -f bismark.yaml -n bismark
conda env create -f multiqc.yaml -n multiqc
conda env create -f ballgown.yaml -n ballgown
conda env create -f r_343.yaml -n r_343
conda env create -f r_351.yaml -n r_351
