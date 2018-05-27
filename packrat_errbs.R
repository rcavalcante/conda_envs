packrat_dir = '/nfs/med-bfx-activeprojects/EpiCore/common/packrat_errbs'

if(!dir.exists(packrat_dir)) {
    dir.create(packrat_dir, mode = '775')
}

packrat::init(packrat_dir, enter = TRUE)

cran_libs = c(
    'readr',
    'ggplot2',
    'reshape2',
    'devtools',
    'optparse',
    'gplots',
    'RColorBrewer',
    'openxlsx',
    'rmarkdown')

install.packages(cran_libs, repos='https://cran.rstudio.com')

bioc_libs = c(
    'annotatr',
    'chipenrich',
    'bsseq',
    'limma',
    'org.Hs.eg.db',
    'org.Mm.eg.db',
    'DSS')

source("https://bioconductor.org/biocLite.R")
biocLite(bioc_libs, ask = FALSE)

git_libs = c(
    'sartorlab/methylSig@v0.5.0-beta'
)

devtools::install_github(git_libs)

install.packages('/nfs/med-bfx-activeprojects/EpiCore/rcavalca/repos/GenomeInfoDb_1.14.1.tar.gz', type = 'source')
