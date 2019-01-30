makeCacheMatrix <- function(x = matrix()) {
  sol <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() {x} 
  setsolve <- function(solve) {sol <<- solve}
  getsolve <- function() {sol}
}

cachesolve <- function(x, ...) {
  sol <- x$getsolve()
  if(!is.null(sol)) {
    message("getting cached data")
    return(sol)
  }
  data <- x$get()
  sol <- solve(data, ...)
  x$setsolve(sol)
  sol
}
