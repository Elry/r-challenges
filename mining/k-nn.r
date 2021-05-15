# title: "Data Mining - K-NN biopsy data"
# author: "Rafael Garcia de Lima"

library(MASS);
library(class);

# removing unused column
biopsy$ID <- NULL;

# cleaning 
biopsy <- na.omit(biopsy);

# function to calc knn
biopsy_knn <- function(ds, k){
  acc = c(1:100)*0
  for (i in 1:100) {
    L <- sample(1:nrow(ds),round(nrow(ds)/3));
    
    train = ds[-L, 1:9];
    test = ds[L, 1:9];
  
    cl = factor(ds[-L, 10]);
    fit = knn(train, test, cl, k = k);
  
    c_matrix = table(fit[1:length(L)], factor(ds[L, 10]))
    
    acc[i] = sum(diag(c_matrix))/sum(c_matrix)*100
  }
  cat('\nAccuracy: ', mean(acc), '%');
}

# knn runs
biopsy_knn(biopsy, 2);
biopsy_knn(biopsy, 5);
biopsy_knn(biopsy, 12);