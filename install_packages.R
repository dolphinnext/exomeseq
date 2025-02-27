inst_pack <- function(pkg){
new.pkg <- pkg[!(pkg %in% installed.packages()[, 'Package'])]
  if (length(new.pkg)) 
    install.packages(new.pkg,  repo = 'https://cran.rstudio.com', dependencies = TRUE)
  sapply(pkg, require, character.only = TRUE)
}

packages <- c('ggplot2', 'plyr', 'dplyr', 'data.table', 'reshape', 'RColorBrewer', 'reshape2', 'circlize', 'BiocManager', 'ggplot2', 'knitr', 'xtable', 'pheatmap', 'RColorBrewer', 'rmarkdown')
inst_pack(packages)

BiocManager::install(c("debrowser", "GenVisR", "VariantAnnotation"))
