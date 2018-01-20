
# 10001st prime

i <- 1
j <- 0
while (i > 0)
{
  j <- ifelse(primetest(i)==1,j+1,j)
  Num <- i
  i <- ifelse(j==10001,0,i+1)
}
Num

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