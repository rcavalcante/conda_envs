packrat_dir = '/nfs/med-bfx-activeprojects/EpiCore/common/packrat_epictest'

if(!dir.exists(packrat_dir)) {
    dir.create(packrat_dir, mode = '775')
}

packrat::init(packrat_dir, enter = TRUE)

Sys.setenv(R_MAX_NUM_DLLS = 300)

cran_libs = c(
    'dplyr',
    'ggplot2',
    'ggpubr',
    'optparse',
    'RColorBrewer',
    'svdvis',
    'VennDiagram')

install.packages(cran_libs, repos='https://cran.rstudio.com')

bioc_libs = c(
    'annotatr',
    'DMRcate',
    'ENmix',
    'GenomicRanges',
    'IlluminaHumanMethylationEPICanno.ilm10b2.hg19',
    'limma',
    'minfi',
    'org.Hs.eg.db')

source("https://bioconductor.org/biocLite.R")
biocLite(bioc_libs, ask = FALSE)

install.packages('/nfs/med-bfx-activeprojects/EpiCore/rcavalca/repos/GenomeInfoDb_1.14.1.tar.gz', type = 'source')
