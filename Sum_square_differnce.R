
# Sum square difference
Sum_Sq <- 0
Sum <- 0
for (i in 1:100)
{
  Sum_Sq <- sum(Sum_Sq,i^2)
  Sum <- sum(Sum,i)
}

(Sum^2-Sum_Sq)
