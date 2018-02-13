# FastQC
conda create --yes --name fastqc
conda install --yes --name fastqc --channel bioconda fastqc=0.11.3
conda env export --name fastqc --file fastqc.yml

# trim_galore
conda create --yes --name trim_galore
conda install --yes --name trim_galore --channel bioconda trim-galore=0.4.5
conda env export --name trim_galore --file trim_galore.yml

# bismark
conda create --yes --name bismark
conda install --yes --name bismark --channel bioconda samtools=1.2
conda install --yes --name bismark --channel bioconda bismark=0.19.0
conda env export --name bismark --file bismark.yml
