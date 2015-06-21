## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  g <- NULL
  set <- function(y) {
    x <<- y
    g <<- NULL
  }
  get <- function() x
  setinv <- function(inv) g <<- inv
  getinv <- function() g
  list(set = set, get = get, setinv = setinv, getinv = getinv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  h <- x$getinv()
  if(!is.null(h)) {
    message("getting cached data")
    return(h)
  }
  data <- x$get()
  h <- solve(data, ...)
  x$setinv(h)
  h
}
