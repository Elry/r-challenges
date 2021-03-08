library(ggplot2);
library(tidyverse);

y <- c(23, 21, 20, 19, 17, 16, 16, 15, 13);
x <- c(3.5, 3.7, 3.8, 4.2, 4.6, 4.7, 4.9, 5.2, 5.5);

df <- data.frame(tempplant = x, waste=y);

g <- ggplot(df, aes(x=tempplant, y=waste)) + geom_point() + labs(x="Time from plantation", y="Waste") + theme_bw();
mod <- lm(waste ~ tempplant, data = df);
g + geom_abline(aes(intercept=coef(mod)[1], slope=coef(mod)[2]))