
# Special pythogeran triplet
Data <- data.frame(a,b,c)
colnames(Data) <- c("a","b","c")


Data1 <- 1:1000
data1 <- data.frame(Data1)
data1$v1 <- "n"
colnames(data1) <- c("a","d1")

Data2 <- 1:1000
data2 <- data.frame(Data2)
data2$v2 <- "n"
colnames(data2) <- c("b","d2")

data <- merge(data1,data2)
data$c <- 1000-(data$a+data$b)
data$Ans <- (data$a^2 + data$b^2 - data$c^2)

subset(data,Ans==0)
375*200*425









# ----------------Special pythogeran triplet - Slow code----------------------------

Dataframe <- data.frame(1,1,1)
colnames(Dataframe) <- c("a","b","c")
for ( i in 1:998)
{
  for (j in 1:998)
  {
    if (i+j < 1000)
    {
      k <- 1000-(i+j)
      Dataframe <- rbind(Dataframe,c(i,j,k))      
    }
  }
}