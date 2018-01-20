
# Largest palindrome product
x <- 999
list <- c()
while (x > 99)
{
  y <- 999
  while (y > 99)
  {
    if (palindrome(x*y) == 1)
    {
      list <- c(list,x*y)
    }
    # print(x*y)
    y <- y-1
  }
  x <- x-1
}

x
y
while (x>100)
{
  print(x)
  x <- x-1
}
# Function to detect palindrome

palindrome <- function(Num)
{
  char_Num <- as.character(Num)
  Vec_Num <- strsplit(char_Num,"")
  n <- length(Vec_Num[[1]])
  flag = 1
  for (i in 1:n)
  {
    if (as.numeric(Vec_Num[[1]][i]) != as.numeric(Vec_Num[[1]][n-i+1]))
    {
     
      flag = 0
    }
  }
  return (flag)
}

palindrome(Num=123454321)

