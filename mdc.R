# MDC entre dois números

is_divisor <- function(value, divisor){
  return((value %% divisor) == 0)
}

get_divisors <- function(value){
  divisors = c();
  for(i in value:1){
    if(is_divisor(value, i)){
      divisors = c(divisors, i)
    }
  }
  return(divisors)
}

get_mdc <- function(n1, n2){
  divisors_n1 <- get_divisors(n1)
  divisors_n2 <- get_divisors(n2)
  common_divisors <- intersect(divisors_n1, divisors_n2)
  max_common_divisor <- max(common_divisors)
  return(max_common_divisor)
}
  
get_mdc(3636360, 4040360)
