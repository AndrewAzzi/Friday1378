# Question 1a
x <- 1
x == 1
x > 1
log(x)
if (x == 1) log(x)
if (x > 1) log(x)

foo <- function(x) {
  if (x > 2) {
    "a"
  } else if (x < 2) {
    "b"
  } else if (x == 1) {
    "c"
  } else {
    "d"
  }
}
foo(1)

# Question 1bi

clean <- function(x) {
  if (x == -99) {
    NA
  }
  else if (x == "."){
    NA
  } 
  else if (x == "NaN") {
    NA
  }
  else{
    x
  }
}
clean(-99)

# Question 1bii

if (x == -99 || x == "." || x == "NaN") {
  NA
}else{
  x
}

clean(-99)
#Question 2a

impatient_square <- function(x) {
  return(x)
  xˆ2
}
impatient_square(2)
#Question 2b
clean <- function(x) {
  if (x == -99) return(NA)
  if (x == ".") return(NA)
  if (x == "NaN") return(NA)
  return(x)
}
clean(-99)
clean(".")
clean("NaN")
clean(1)
#Question 2c
immovable_square <- function(x) {
  stop("I refuse to proceed.")
  xˆ2
}
immovable_square(2)

#Question 2d&e
clean <- function(x) {
  if(is.null(x)){
    stop("x is NULL")
  }
  if (x == -99) {
    return(NA)
  }
  if (x == ".") {
    return(NA)
  }
  if (x == "NaN") {
    return(NA)
  }
  
  x
}
clean(NULL)
#Question 2e
# warning 

#Question 3a
n <- 1
while (n <= 5) {
  print(n)
  n <- n + 1
}
is_prime <- function(x) {
  n <- 2
  repeat {
    print(n)
    if (n == x) {
      return(TRUE)
    }
    if (x %% n == 0) {
      return(FALSE)
    }
    n <- n + 1
  }
}
is_prime(7)
?'repeat'
#Question 3b
n <- 1
while (n <= 5) {
  print(n)
  n <- n + 1
}
is_prime <- function(x) {
  n <- 2
  while(n <= x) {
    print(n)
    if (n == x) {
      return(TRUE)
    }
    if (x %% n == 0) {
      return(FALSE)
    }
    n <- n + 1
  }
}
is_prime(7)
#Question 4a
for (n in c(1, 2, 3, 4, 5)) {
  print(n)
}
for (i in c(1, 10, 200)) {
  print(i)
}
for (person in c("Betty", "Veronica", "Archie")) {
  greeting <- paste("Hello", person)
  print(greeting)
}
seq(1, 10)
seq_along(c(1, 10, 200))

#Question 4b
is_prime <- function(x) {
  for(n in seq(2, x)) {
    print(n)
    if (n == x) {
      return(TRUE)
    }
    if (x %% n == 0) {
      return(FALSE)
    }
    n <- n + 1
  }
}
is_prime(18)

#Question 4c
x <- c(1, 2, 3, 4, 5)
y <- double(length = 5)
for (i in seq_along(x)) {
  y[i] <- sqrt(i)
}
y
sqrt(x)
c(1, 2, 3, 4, 5) + c(1, 2, 3, 4, 5)
round_square <- function(vec) {
  sqs <- sqrt(vec)
  round(sqs, digits = 2)
}
round_square(x)

#Question 4d
is_prime <- function(x, n = 2) {
  if (n == x) { 
    return(TRUE)
  } else if (x %% n == 0) {
    return(FALSE)
  } else {
    is_prime(x, n = n + 1)
  }
}
is_prime(7)

#Question 5a
x <- -99
x == -99 | x == "."
x <- c(-99, 0, 1)
x == -99
x == "."
x == -99 | x == "."
x <- c(-99, 0, 1)
if (any(x == -99 | x == ".")) NA
x <- -99
if (x == -99 || stop("if you eval_sol this.")) "I didn't eval_sol stop()."

#Question 5b
clean <- function(x) {
  if (any(x==-99| x == 0 | x == 1)) NA else x
}
clean(c(-99, 0, 1))

#Question 5c
foo <- function(x) {
  if (x > 2) {
    "a"
  } else if (x < 2) {
    "b"
  } else if (x == 1) {
    "c"
  } else {
    "d"
  }
}
foo(1)
library(tidyverse) # to export case_when
foo2 <- function(x) {
  case_when(
    x > 2 ~ "a",
    x < 2 ~ "b",
    x == 1 ~ "c",
    TRUE ~ "d"
  )
}
foo2(1)

#Question 5d
clean <- function(x) {
  if (x == -99) {
    NA
  } else if (x == ".") {
    NA
  } else if (x == "") {
    NA
  } else if (x == "NaN") {
    NA
  } else {
    x
  }
}

#Question 7 ex. 1
?Random
?rand
?random

c <- c(1,2,3,4,5)
