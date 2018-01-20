
# Largest prime factor

list <- c(1)
for (i in 2:sqrt(600851475143))
{
  factor <- ifelse(600851475143%%i == 0,1,0)
    list <- c(list,factor)
}

divisors <- which(list==1)
divisors1 <- divisors
# list1 <- c()
n <- length(divisors1)
for (i in 1:n)
{
  factor1 <- 600851475143/divisors[i]
  divisors1 <- c(divisors1,factor1)
}

prime_list <- c()
for (i in 1:length(divisors1))
{
  prime_ <- primetest(a = divisors1[i],prime = "is prime number")
  prime_list <- c(prime_list,prime_)
}
# Prime number code
primetest <- function(a, prime)
{
  if (a < 4)
  {
    if (a == 1){prime = "is not prime number"}
    else {prime = "is prime number"}
  }
  else
  {
    x <- sqrt(a)
    for (y in 2:x)
    {
      if (a %% y == 0)
      {
        prime = "is not prime number"
      }
    }
  }
  cat(sprintf("%s %s\n",a,prime))
  # return(values <- c(prime))
}

primetest(a = 541,prime = "is prime number")