# View Dataset.
data(iris)
View(iris)
#---------------------------------------------------------------
#describe the Data in Dataset (iris) Graphically.
# Sepal--> Green   ,,, petal-->Blue
boxplot(iris)
#---------------
hist(iris$Sepal.Length,main="Sepal_Length",col="green")
hist(iris$Sepal.Width,main="Sepal_Width",col="green")
hist(iris$Petal.Length,main="Petal_Length",col="blue")
hist(iris$Petal.Width,main="Petal_Width",col="blue")
#-----------------
plot(density(iris$Sepal.Length))
plot(density(iris$Sepal.Width))
plot(density(iris$Petal.Length))
plot(density(iris$Petal.Width))
#--------------------------
barplot(table(iris$Sepal.Length),main="Sepal_Length",col="green")
barplot(table(iris$Sepal.Width),main="Sepal_Width",col="green")
barplot(table(iris$Petal.Length),main="Petal_Length",col="blue")
barplot(table(iris$Petal.Width),main="Petal_width",col="blue")
#-----------------------------------------------------------------
#discribe each Species in the dataset Graphically.
# 1.setosa
barplot(table(iris$Species=="setosa",iris$Sepal.Length))
barplot(table(iris$Species=="setosa",iris$Sepal.Width))
barplot(table(iris$Species=="setosa",iris$Petal.Length))
barplot(table(iris$Species=="setosa",iris$Petal.Width))
#------------------
# 2.versicolor
barplot(table(iris$Species=="versicolor",iris$Sepal.Length))
barplot(table(iris$Species=="versicolor",iris$Sepal.Width))
barplot(table(iris$Species=="versicolor",iris$Petal.Length))
barplot(table(iris$Species=="versicolor",iris$Petal.Width))
#------------------
# 3.virginica
barplot(table(iris$Species=="virginica",iris$Sepal.Length))
barplot(table(iris$Species=="virginica",iris$Sepal.Width))
barplot(table(iris$Species=="virginica",iris$Petal.Length))
barplot(table(iris$Species=="virginica",iris$Petal.Width))
#------------------------------------------------------------------
#describe Data Numerically
#--
# 1.Mean.
mean(iris$Sepal.Length)
mean(iris$Sepal.Width)
mean(iris$Petal.Length)
mean(iris$Petal.Width)
#----------------------
# 2.Median.
median(iris$Sepal.Length)
median(iris$Sepal.Width)
median(iris$Petal.Length)
median(iris$Petal.Width)
#-------------------------------------------------------------------
# Calculate Correlation (Sepal_length,Petal_Length)
cor(iris$Sepal.Length,iris$Petal.Length,use="complete.obs", method="pearson")
#-------------------------
# Calculate Correlation (Sepal_Width,Petal_Width)
cor(iris$Sepal.Width,iris$Petal.Width,use="complete.obs", method="pearson")
#--------------------------------------------------------------------
# Test
t.test(iris$Sepal.Length,iris$Petal.Length, alternative="less", paired =
         FALSE, var.equal=TRUE, conf.level=.95)
#----------------------------------------------------------------------
## Apply K-means Clustring.
x=iris[,-5]
y=iris$Species
km <- kmeans(x,3)
km
table(y,km$cluster)
plot(x[c("Sepal.Length", "Sepal.Width")], col=km$cluster)
points(km$centers[,c("Sepal.Length", "Sepal.Width")], col=1:3, pch=23, cex=3)

