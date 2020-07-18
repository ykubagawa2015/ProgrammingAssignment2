### Assignment: Caching the Inverse of a Matrix
Write the following functions:

1.  `makeCacheMatrix`: This function creates a special "matrix" object
    that can cache its inverse.
2.  `cacheSolve`: This function computes the inverse of the special
    "matrix" returned by `makeCacheMatrix` above. If the inverse has
    already been calculated (and the matrix has not changed), then
    `cacheSolve` should retrieve the inverse from the cache.

Computing the inverse of a square matrix can be done with the `solve`
function in R. For example, if `X` is a square invertible matrix, then
`solve(X)` returns its inverse.

For this assignment, assume that the matrix supplied is always
invertible.

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
  data <- x$get()
  invs <- solve(data, ...)
  x$setinverse(invs)
  i
}


