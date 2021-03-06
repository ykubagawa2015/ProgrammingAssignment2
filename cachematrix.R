### MY SOLUTION
### The goal of this 1st function is to set/get the value of the matrix, and to set/get the value of the inverse.
### The functions below will be caching the inverse of a matrix thoroughout a specific object: 


makeCacheMatrix <- function(x = matrix()) {
    invs <- NULL
  set <- function(y) {
          x <<- y
          invs <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) invs <<- inverse
  getinverse <- function() invs
  list(set = set,
       get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}



### The function below will be solving the the specific object (Special matrix) returned by the makecache matrix.
### Notice that if the inverse is calculated then cacheSolve should get us the inverse from the cache:

cacheSolve <- function(x, ...) {
  invs <- x$getinverse()
  if (!is.null(invs)) {
          message("getting cached data")
          return(invs)
  }
  xynz <- x$get()
  invs <- solve(data, ...)
  x$setinverse(invs)
  invs
}







