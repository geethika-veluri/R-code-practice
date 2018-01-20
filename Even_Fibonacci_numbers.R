
# Even Fibonacci numbers
i_term <- 1
prev_term <- 1
Even_sum <- NULL
for (i in 1:1000)
{
  buffer <- i_term
  i_term <- i_term + prev_term

  if (i_term > 4000000)
  {
    break
  }
  if (i_term%%2==0)
  {
    Even_sum <- sum(Even_sum,i_term)
  }
  prev_term <- buffer
}

Even_sum
