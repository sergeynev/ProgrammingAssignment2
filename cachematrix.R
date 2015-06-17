## This is my version of functions.
## I'm not native English speaker, so Sorry for it :)

## Function makeCacheMatrix return list of functions for computation inverse matrix and hold cache

makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    set <- function(y) {
        x <<- y
        m <<- NULL
    }
    get <- function() x
    setinverse <- function(inverse) m <<- inverse
    getinverse <- function() m
    list(set = set, get = get,
          setinverse = setinverse,
           getinverse = getinverse)
}


## This function check if we have inverse matix in cache. If not it compute inverse matrix, save it and return it.

cacheSolve <- function(x, ...) {
    m <- x$getinverse()
    if(!is.null(m)) {
        message("getting cached data")
        return(m)
    }
    data <- x$get()
    m <- solve(data)
    x$setinverse(m)
    m       
}
