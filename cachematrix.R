
## The function make CacheMatrix and cacheSolve are used for creating a 
## matrix object and cache its inverse

## This function is for creating the matrix object
makeCacheMatrix <- function(x = matrix()) {

inv <- NULL
set <- function(y) {
x <<- y
inv <<- NULL
}
get <- function() x
setInverse <- function(inverse) inv <<- inverse
getInverse <- function() inv
list(set = set,
get = get,
setInverse = setInverse,
getInverse = getInverse)
}

}


## this function is written to cache the inverse of a matrix
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'

}inv <- x$getInverse()
if (!is.null(inv)) {
message("getting cached data")
return(inv)
}
mat <- x$get()
inv <- solve(mat, ...)
x$setInverse(inv)
inv
}
