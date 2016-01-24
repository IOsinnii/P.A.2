## These functions in pair allows you to calculate inverted matrix to the one you've had as an input with further
## setting of the result into R's cache. Thus they simplify next similar operations with the same input.

         ## First function is usead as "cache". It stores four sub-functions by which we 
         ## can set and get values of both initial and inverted matrices.

makeCacheMatrix <- function(x = matrix()) {
s <<- NULL
set <- function (y) {
        x <<- y
        s <<- NULL
}
        get <- function() x
        setsolve <- function(solve) s <<- solve
        getsolve <- function () s
        list (set = set, get= get,
              setsolve = setsolve,
              getsolve = getsolve)
        
}


## Second function can get and return previously calculated value of inverted matrix or in the case of its absence
## it calculates it, stores into the cache and prints the value.

cacheSolve <- function(x, ...) {

                s <- x$getsolve()
                if(!is.null(s)) {
                        message("getting cached data")
                        return(s)
                }
                else
                {
                        
                }
                data <- x$get()
                s <- solve(data, ...)
                x$setsolve(s)
                s
        }       
        
         ## Return a matrix that is the inverse of 'x'

