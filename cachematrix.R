## Functions in this file help calculate inverse of the given
## matix and cache the results.

## makeCacheMatrix is an object that contains the matrix
## and its inverse.
## It provides getters and setters for the matrix and the inverse

makeCacheMatrix <- function(x = matrix()) {
        s <- NULL

        set <- function(y) {
                x <<- y
                # Reset inverse when the matrix changes
                s <<- NULL 
        }
        get <- function() x
        setSolve <- function(solve) s <<- solve
        getSolve <- function() s
        list(set = set, get = get,
             setSolve = setSolve,
             getSolve = getSolve)
}


## cacheSolve returns the inverse of the matrix.
## Calculation is done only if inverse is not available already,
## which is the case when a new matrix is set

cacheSolve <- function(x, ...) {
        s <- x$getSolve()
        if(!is.null(s)) {
                message("getting cached data")
                return(s)
        }
        data <- x$get()
        s <- solve(data, ...)
        x$setSolve(s)
        s
}
