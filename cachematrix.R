## These functions first creates a matrix that can cache its inverse and then the
## second function actually computes the inverse

## Creates Inverse Matrix

makeCacheMatrix <- function(x = matrix()) {
i <- NULL
            set <- function(y) {
                    x <<- y
                    i <<- NULL
            }
            get <- function() x
            setinvma <- function(invma) 
		i <<- invma
            getinvma <- function() i
            list(set = set, get = get,
                 setinvma = setinvma,
                 getinvma = getinvma)

}


## Computes Inverse Matrix

cacheSolve <- function(x, ...) {
i <- x$getinvma()
            if(!is.null(i)) {
                    message("getting cached data")
                    return(i)
            }
            data <- x$get()
            i <- solve(data, ...)
            x$setinvma(i)
            i

        ## Return a matrix that is the inverse of 'x'
}
