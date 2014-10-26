## Put comments here that give an overall description of what your
## functions do

## Functions for get set  and calculating inversion
makeCacheMatrix <- function(x = matrix()) {
  matrix <- NULL
  set <- function(y) {
    x <<- y
    matrix <<- NULL
  }	
  get <- function() x
  setsolve <- function(solve) matrix <<- solve
  getsolve <- function() matrix
  list(set = set, get = get,
       setsolve = setsolve,
       getsolve = getsolve)
}



## Function get matrix as vector 1x1 
cacheSolve <- function (x, ...) {
     ## Return a matrix that is the inverse of 'x'
     m <- x$getsolve()
     if(!is.null(m)) {
         message("getting cached data")
         return(m)
       }
     data <- x$get()
     m <- solve(data, ...)
     x$setsolve(m)
     m
}

