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
        setSolve <- function(inverse) i <<- inverse
        getSolve <- function() m
        list(set = set, get = get,
             setSolve = setSolve,
             getSolve = getSolve)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
