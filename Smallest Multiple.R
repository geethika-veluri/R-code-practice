
# Smallest multiple

n <- 20
list <- c()
for (i in 2:n)
{
  if (primetest(i)==1)
  {
    j <- 1
    # i <- 3
    while (j>0)
    {
      Num = i^j
      j <- ifelse(i^(j+1)>n,0,j+1)
      
    }
    list <- c(list,Num)
  }
}

prod(list)
#  prime number code

primetest <- function(a)
{ 
  prime_flag <- 1
  if (a < 4)
  {
    prime_flag <- ifelse(a == 1,0,1)
  }
  else
  {
    x <- sqrt(a)
    for (y in 2:x)
    {
      prime_flag <- ifelse (a %% y == 0,0,1*prime_flag)
    }
  }
  return(prime_flag)
}

