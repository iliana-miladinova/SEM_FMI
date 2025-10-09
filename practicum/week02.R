num_trials <- 100000

# task 02
exp.socks <- function() {
  socks <- c(1, 1, 2, 2, 3, 3)
  s <- sample(socks, 2, replace=FALSE)
  s[1] == s[2]
}
prob.socks <- function(N) {
  results <- replicate(N, exp.socks())
  sum(results) / N
} 

prob.socks(num_trials)

#task 03
#key 1 is the right one(we chose this)
exp.keys <- function() {
  keys <- c(0, 0, 0, 1)
  s <- sample(keys, 4, replace=FALSE)
  s[4] == 1
}

prob.keys <- function(N) {
  results <- replicate(N, exp.keys())
  sum(results) / N
}

prob.keys(num_trials)

#task 04
exp.exam <- function() {
  questions <- c(rep(1, 17), rep(0, 3))
  s <- sample(questions, 2, replace=FALSE)
  sum(s) == 1
}

prob.exam <- function(N) {
  results <- replicate(N, exp.exam())
  sum(results) / N
}

prob.exam(num_trials)

#task 10
exp.flight.a <- function(n_seats, n_pass, p) {
  passengers <- sample(c(0,1), n_pass, replace=TRUE, prob=c(1-p, p))
  sum(passengers) <= n_seats
  
}

exp.flight.b <- function(n_seats, n_pass, p) {
  passengers <- sample(c(0,1), n_pass, replace=TRUE, prob=c(1-p, p))
  sum(passengers) <= n_seats - 1
  
}

prob.flight <- function(N) {
  print("a)")
  results <- replicate(N, exp.flight.a(138, 143, 0.93))
  print(sum(results) / N)
  
  print("b)")
  results <- replicate(N, exp.flight.b(138, 143, 0.93))
  print(sum(results) / N)
}

prob.flight(num_trials)

#task 11
#1 - green, 0 - red
exp.boxes.a <- function() {
  box1 <- c(rep(1, 2), rep(0, 2))
  box2 <- c(rep(1, 1), rep(0, 4))
  #dice <- c(1:6)
  #if (sample(c(1:6), 1) == 6) {
  # ball <- sample(box1, 1)
  #}
  #else {
  #  ball <- sample(box2, 1)
  #}
  
  ball <- ifelse(
                 sample(c(1:6), 1) == 6, 
                 sample(box1, 1), 
                 sample(box2, 1)
                 )
  ball
}

exp.boxes.b <- function() {
  box1 <- c(rep(1, 2), rep(0, 2))
  box2 <- c(rep(1, 1), rep(0, 4))
  dice <- sample(c(1:6), 1)
  ball <- ifelse(
    dice == 6, 
    sample(box1, 1), 
    sample(box2, 1)
  )
  c(ball, dice)
}

prob.boxes <- function(N) {
    print("a)")
    results.a <- replicate(N, exp.boxes.a())
    print(sum(results.a) / N)
    
    print("b)")
    results.b <- replicate(N, exp.boxes.b())
    sum(results.b[2,] != 6 & results.b[1,] == 1) / sum(results.b[1,])
}

prob.boxes(num_trials)