# title: "Data Mining - K-NN biopsy data"
# author: "Rafael Garcia de Lima"

library(MASS);
library(class);

# initial data analysis
summary(biopsy);

# removing unused column
biopsy$ID <- NULL;

# cleaning NA's from V6 column
biopsy <- na.omit(biopsy);

# data analysis without NA's and the ID column
summary(biopsy);

# function to calc knn
biopsy_knn <- function(data, k){
  # creating accuracy vector
  accuracy = c(1:100)*0

  for (i in 1:100) {
    L <- sample(1:nrow(data),round(nrow(data)/3));
    
    train = data[-L, 1:9];
    test = data[L, 1:9];
  
    cl = factor(data[-L, 10]);
    fit = knn(train, test, cl, k = k);
  
    c_matrix = table(fit[1:length(L)], factor(data[L, 10]))
    
    accuracy[i] = sum(diag(c_matrix))/sum(c_matrix)*100
  }
  
  cat('\nAccuracy: ', mean(accuracy), '%\n');
}

# knn runs
biopsy_knn(biopsy, 2);
biopsy_knn(biopsy, 5);
biopsy_knn(biopsy, 12);