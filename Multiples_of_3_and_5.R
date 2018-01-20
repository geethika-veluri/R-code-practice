
# Multiples of 3 and 5
list <- c()
for (i in 1:(1000-1))
{
  if (i%%3==0 || i%%5==0)
  {
   list <- c(list,i)
  }
}

sum(list)
