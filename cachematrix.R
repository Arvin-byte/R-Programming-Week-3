## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
## The functions makeCacheMatrix _ cacheSolve efficiently and effectively solves
## matrix_inversion

## makeCacheMatrix is an example of a function that generates a matrix wherein the inverse
## can result in a cache

makeCacheMatrix <- function(k = matrix()) {
  a <- NULL
  set <- function(c) {
    k <<- c
    a <<- NULL
  }
  get <- function() k
  s_solve <- function(inverse) a <<- inverse
  g_solve <- function() a
  list(set = set, get = get,
       s_solve = s_solve,
       g_solve = g_solve)
}

## cacheSolve is a function thattransforms the inverse of the given matrix that was solve
## through the MakeCacheMatrix feature

cacheSolve <- function(k, ...) {
   a <- k$g_solve()
  if(!is.null(a)) {
    message("receiving inversed matrix")
    a
  }
  data <- k$get()
  a <- solve(data, ...)
  k$s_solve(a)
  a
}