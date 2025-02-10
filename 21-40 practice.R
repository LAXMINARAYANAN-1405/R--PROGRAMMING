# 21. Factorial using a for loop
factorial_loop <- function(num) {
  if (num < 0) {
    return("Error: Factorial of a negative number is undefined.")
  }
  if (num == 0) {
    return(1)
  }
  fac <- 1
  for (i in 1:num) {
    fac <- fac * i
  }
  return(fac)
}
print(factorial_loop(5))

# 22. Fibonacci sequence using while loop
fibonacci_while <- function(lim) {
  f1 <- 0
  f2 <- 1
  fib <- c(f1, f2)
  while (TRUE) {
    nxt <- f1 + f2
    if (nxt > lim) break
    fib <- c(fib, nxt)
    f1 <- f2
    f2 <- nxt
  }
  print(fib)
  print(length(fib))
}
fibonacci_while(10)

# 23. Assign grade based on score
assign_grade <- function(score) {
  if (score >= 90) {
    return("A")
  } else if (score >= 80) {
    return("B")
  } else if (score >= 70) {
    return("C")
  } else if (score >= 60) {
    return("D")
  } else {
    return("F")
  }
}
print(assign_grade(85))

# 24. Mean of numeric vectors ignoring non-numeric values
mean_ignore_na <- function(lst) {
  means <- sapply(lst, function(x) mean(as.numeric(x), na.rm = TRUE))
  return(means)
}
print(mean_ignore_na(list(c(1, 2, "a", 3), c(4, 5, NA, 6))))

# 25. Print rows from data frame meeting a condition
filter_age <- function(df) {
  print(df[df$Age > 30, ])
}
df <- data.frame(Name = c("Alice", "Bob"), Age = c(25, 35))
filter_age(df)

# 26. Basic arithmetic operations
arithmetic_ops <- function(a, b) {
  return(list(sum = a + b, diff = a - b, prod = a * b, quot = a / b))
}
print(arithmetic_ops(10, 5))

# 27. Attendance or exam pass
check_attendance <- function(att, exam) {
  return(att >= 75 || exam >= 50)
}
print(check_attendance(80, 40))

# 28. Mean, Median, Mode function
calc_stats <- function(vec) {
  mode_val <- as.numeric(names(sort(table(vec), decreasing = TRUE)[1]))
  return(list(mean = mean(vec), median = median(vec), mode = mode_val))
}
print(calc_stats(c(1, 2, 2, 3, 4)))

# 29. Recursive factorial
factorial_recursive <- function(n) {
  if (n == 0) return(1)
  return(n * factorial_recursive(n - 1))
}
print(factorial_recursive(5))

# 30. Recursive Fibonacci
fibonacci_recursive <- function(n) {
  if (n <= 1) return(n)
  return(fibonacci_recursive(n - 1) + fibonacci_recursive(n - 2))
}
print(fibonacci_recursive(6))

# 31. Vector iteration with arithmetic function
vector_arithmetic <- function(vec) {
  return(sapply(vec, function(x) x * 2))
}
print(vector_arithmetic(c(1, 2, 3)))

# 32. Rectangle area with default values
rectangle_area <- function(l = 5, w = 10) {
  return(l * w)
}
print(rectangle_area())
print(rectangle_area(7, 8))

# 33. Prime number check
is_prime <- function(n) {
  if (n < 2) return(FALSE)
  for (i in 2:sqrt(n)) {
    if (n %% i == 0) return(FALSE)
  }
  return(TRUE)
}
print(is_prime(11))

# 34. Recursive sum of vector
sum_recursive <- function(vec) {
  if (length(vec) == 0) return(0)
  return(vec[1] + sum_recursive(vec[-1]))
}
print(sum_recursive(c(1, 2, 3, 4)))

# 35. Assign grade based on criteria
print(assign_grade(78))

# 36. Replace values in vector
replace_values <- function(vec) {
  return(ifelse(vec > 0, "positive", ifelse(vec < 0, "negative", "zero")))
}
print(replace_values(c(-1, 0, 1)))

# 37. Loop over character vector categories
category_counts <- function(lst) {
  for (cat in names(lst)) {
    print(paste(cat, length(lst[[cat]])))
  }
}
category_counts(list(Fruits = c("Apple", "Banana"), Electronics = c("Phone")))

# 38. Find duplicated products and unique customer-product pairs
find_duplicate_products <- function(cust, prod) {
  df <- data.frame(Customer = cust, Product = prod)
  print(df[duplicated(df$Product), ])
  print(unique(df))
}
find_duplicate_products(c("A", "B", "A", "C"), c("X", "Y", "Z", "W"))

# 39. Identify duplicated treatments for patients
find_duplicate_treatments <- function(pat, treat) {
  df <- data.frame(Patient = pat, Treatment = treat)
  print(df[duplicated(df$Treatment), ])
  print(unique(df))
}
find_duplicate_treatments(c("P1", "P2", "P3", "P1"), c("T1", "T2", "T1", "T3"))

# 40. Find duplicate treatments and summarize unique patient-treatment pairs
find_treatment_duplicates <- function(pat, treat) {
  df <- data.frame(Patient = pat, Treatment = treat)
  print(df[duplicated(df$Treatment), ])
  print(aggregate(Treatment ~ Patient, data = df, FUN = unique))
}
find_treatment_duplicates(c("P1", "P2", "P1", "P3"), c("T1", "T2", "T1", "T3"))