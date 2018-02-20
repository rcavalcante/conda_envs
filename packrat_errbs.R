packrat::init('/ccmb/BioinfCore/ActiveProjects/EpiCore/bin/packrat_errbs')

install.packages(c('devtools', 'optparse', 'gplots', 'RColorBrewer'), repos='https://cran.rstudio.com')

source("https://bioconductor.org/biocLite.R")
biocLite(c('annotatr', 'rtracklayer'))

devtools::install_github('sartorlab/methylSig@v0.5.0')
