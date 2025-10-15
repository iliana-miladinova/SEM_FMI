num_trials <- 100000

#task05

exp.birthdays <- function() {
  dates <- sample(c(1:365), 25, replace=TRUE) #chose 25 nums between 1 and 365 with repetition
  anyDuplicated((dates)) != 0 #check if there are duplicates
}

prob.birthdays <- function(N) {
  results <- replicate(N, exp.birthdays()) #call exp.birthdays() N times
  sum(results) / N #count the numbers of TRUE and / N to get the prob
}

prob.birthdays(num_trials)

#task06

exp.gifts <- function() {
  names <- c(1:20)
  recepients <- sample(names, 20, replace=FALSE)
  any(names==recepients)
}

prob.gifts <- function(N) {
  results <- replicate(N, exp.gifts())
  sum(results) / N
}

prob.gifts(num_trials)

#task07

exp.ants <- function() {
  a1 <- sample(c(2,3), 1, replace=FALSE) #chose if ant1 will go to the place of ant2 or ant3
  a2 <- sample(c(1,3), 1, replace=FALSE)
  a3 <- sample(c(1,2), 1, replace=FALSE)
  new_ants <- c(a1, a2, a3)
  length(unique((new_ants))) == 3 #check if the ants are with unique numbers
}

prob.ants <- function(N) {
  results <- replicate(N, exp.ants())
  sum(results) / N #length(results)
}

prob.ants(num_trials)