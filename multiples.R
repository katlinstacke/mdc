# Imprimir numeros de 1 a 100, mas nos multiplos de 3 imprima Fizz, em vez do numero, e nos multiplos de 5 imprima Buzz. Para os numeros que sao multiplos tanto de 3 quanto de 5 imprima FizzBuzz

is_multiple <- function(value, multiple){
  return((value %% multiple) == 0)
}
  
for(i in 1:100){
  result = "";
  
  if(is_multiple(i, 3)){
    result = paste(result, "Fizz")
  }
  
  if(is_multiple(i, 5)){
    result = paste(result, "Buzz")
  }
  
  if(result == "") {
    print(i)
  } else {
    print(result)
  }
}