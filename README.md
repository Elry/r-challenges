# r-challenges
Simple R challenges

## install with specified repo
```bash
>install.packages(c("dplyr"), repos=c('http://rforge.net', 'http://cran.rstudio.org'), type = 'source');
```

## start without messages
```bash
$R --quiet
```

## run from terminal
```bash
$Rscript -e "update.packages(ask=FALSE, checkBuilt=TRUE, repos=c('http://cran.rstudio.org'))"
```

## Correcting data before import
```bash
library(readr)
autos <- read_delim("datasets/autos.csv", ";", escape_double = FALSE, locale = locale(decimal_mark = ","), trim_ws = TRUE);
```