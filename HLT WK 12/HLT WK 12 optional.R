# Optional learning task 1
num_of_terms <- 10
n1 <- 0
n2 <- 1
print("Fibonacci sequence for the first 10 terms is: ")
print(n1)
print(n2)

count <- 2
while (count<10)
  {nth_term = n1 + n2
  print(nth_term)
  n1 = n2
  n2 = nth_term
  count = count + 1}

# Optional learning task 2

seq <- (1:100)
for(i in seq) {
  if(i%%15==0){
    print("fizzbuzz")
  } else if (i%%3==0){
    print("fizz")
  } else if (i%%5==0) {
    print("buzz")
  } else {
    print(i)
  }
} 
  
