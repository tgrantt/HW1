fib <- function(n) 
{
  fib_values <- numeric(n)
  
  if (n <= 2)
  {
    fib_values <- rep(1, times = n)
  }
  else 
  {
    fib_values[1] <- 1
    fib_values[2] <- 1
    for ( i in 3:n)
    {
      fib_values[i] <- fib_values[i-1]+fib_values[i-2]
    }
  }
  fib_values
}