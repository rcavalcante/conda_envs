# FastQC
conda create --yes --name fastqc
conda install --yes --name fastqc --channel bioconda fastqc=0.11.3
conda env export --no-builds --name fastqc --file fastqc.yml

# trim_galore
conda create --yes --name trim_galore
conda install --yes --name trim_galore --channel bioconda trim-galore=0.4.5
conda env export --no-builds --name trim_galore --file trim_galore.yml

# bismark
conda create --yes --name bismark
conda install --yes --name bismark --channel bioconda bismark=0.19.0 samtools=1.2 bowtie2=2.3.4.1
conda env export --no-builds --name bismark --file bismark.yml

# multiqc
conda create --yes --name multiqc
conda install --yes --name multiqc --channel bioconda multiqc=1.5
conda env export --no-builds --name multiqc --file multiqc.yml

# R
conda create --yes --name errbs_r
conda install --yes --name errbs_r --channel anaconda gxx_linux-64 gfortran_linux-64
conda install --yes --name errbs_r --channel r r-essentials=3.4.3=r343_0 r-packrat r-rmariadb
conda env export --no-builds --name errbs_r --file errbs_r.yml

source activate errbs_r
Rscript packrat_errbs.R
source deactivate
