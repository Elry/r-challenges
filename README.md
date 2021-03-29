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

## 
```bash
rmarkdown::render();
```