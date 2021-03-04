# as pdf, between 7 ~ 15 pages. Describe all graphs

# starting
library(ggplot2);
data(diamonds);
dds <- diamonds;

# 1. Qual é a estrutura do conjunto de dados “diamantes”?
str(dds);

# 2. Explore a parte inicial e a final do conjunto de dados.
head(dds);
tail(dds);

# 3. Faça alguns sumários estatísticos para entender melhor a base de dados.
summary(dds);

# 4. A saída da função summary() está de acordo com a descrição mostrada anteriormente?
print('Sim, todos os dados estão de acordo com a função summary() e as anteriores')

# 5. Explore a variável price, seguindo o modelo de exploração.
head(dds$price);
tail(dds$price);
mean(dds$price);
summary(dds$price);

# 6. Veja a distribuição da variável (histograma); observe a faixa de valores da variável e também.
hist(dds$price, col='green', breaks=80, main='Price x Amount', xlab='Price', ylab='Amount');

# 7. Explore também as variáveis carat, cut, color, clarity, x, y, z, depth e table, seguindo o modelo de exploração.
# carat
head(dds$carat);
tail(dds$carat);
mean(dds$carat);
summary(dds$carat);
hist(dds$carat, col='green', breaks=80, main='Carat x Amount', xlab='Carat', ylab='Amount');

# cut
head(dds$cut);
tail(dds$cut);
summary(dds$cut);

# color
head(dds$color);
tail(dds$color);
summary(dds$color);

# clarity
head(dds$clarity);
tail(dds$clarity);
summary(dds$clarity);

# x
head(dds$x);
tail(dds$x);
mean(dds$x);
summary(dds$x);
hist(dds$x, col='green', breaks=80, main='', xlab='', ylab='');

# y
head(dds$y);
tail(dds$y);
mean(dds$y);
summary(dds$y);
hist(dds$y, col='green', breaks=80, main='', xlab='', ylab='');

# z
head(dds$z);
tail(dds$z);
mean(dds$z);
summary(dds$z);
hist(dds$z, col='green', breaks=80, main='', xlab='', ylab='');

# depth
head(dds$depth);
tail(dds$depth);
mean(dds$depth);
summary(dds$depth);
hist(dds$depth, col='green', breaks=80, main='Depth x Amount', xlab='Depth', ylab='Amount');

# table
head(dds$table);
tail(dds$table);
mean(dds$table);
summary(dds$table);
hist(dds$table, col='green', breaks=80, main='Table x Amount', xlab='Table', ylab='Amount');

# 8. Crie boxplots para as variáveis numéricas; veja se existem dados anormais (outliers).
boxplot(dds$x, ylab='x', main='x', col='blue');
boxplot(dds$y, ylab='y', main='y', col='blue');
boxplot(dds$z, ylab='z', main='z', col='blue');
boxplot(dds$carat, ylab='Carat', main='Carat', col='blue');
boxplot(dds$price, ylab='Price', main='Price', col='green');
boxplot(dds$depth, ylab='Depth', main='Depth', col='green');
boxplot(dds$table, ylab='Table', main='Table', col='green');

# 9. Utilize as variáveis categóricas para fazer o facetamento dos dados, mostrando alguns gráficos com 2 ou mais variáveis contínuas lado a lado
boxplot(depth ~ cut, data=dds, xlab='Cut', ylab='Depth', main="Depth by cut", col='blue');
boxplot(depth ~ color, data=dds, xlab='Color', ylab='Depth', main="Depth by color", col='blue');
boxplot(depth ~ clarity, data=dds, xlab='Clarity', ylab='Depth', main="Depth by clarity", col='blue');

boxplot(clarity ~ cut, data=dds, xlab='Cut', ylab='Clarity', main='Clarity by cut', col='yellow');
boxplot(clarity ~ color, data=dds, xlab='Color', ylab='Clarity', main='Clarity by color', col='yellow');

boxplot(color ~ cut, data=dds, xlab='Cut', ylab='Color', main='Color by cut', col='red');

boxplot(price ~ cut, data=dds, xlab='Cut', ylab='Price', main='Price by cut', col='green');
boxplot(price ~ color, data=dds, xlab='Color', ylab='Price', main='Price by color', col='green');
boxplot(price ~ clarity, data=dds, xlab='Clarity', ylab='Price', main='Price by clarity', col='green');
