## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## makeCacheMatrix is a creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(matrix = matrix()) {
    ## Initialise the inverse to NULL
    inverse <- NULL
    ## Function to set the matrix into the cache and the inverse to NULL
    set <- function(y) {
        matrix <<- y
        inverse <<- NULL
    }
    ## Get only the matrix 
    get <- function() matrix
    ## Set the input "inv" into the inverse cache variable
    setinv <- function(inv) inverse <<- inv
    ## Get the inverse 
    getinv <- function() inverse
    ## List of element into the makeCacheMatrix function
    list(set = set, get = get,
         setinv = setinv,
         getinv = getinv)
}
                    

## Write a short comment describing this function

## This function computes the inverse of the special "matrix" returned by makeCacheMatrix above.
## If the inverse has already been calculated (and the matrix has not changed), 
## then the cachesolve should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    
    ## Get the inverse of the matrix "x
    inv <- x$getinv()
    ## Check if the inverse of x is not NULL
    if(!is.null(inv)){
        ## If it is not = NULL -> return the inv of x
        message("Getting cached data")
        return (inv) ## Quit the function with the inverse "inv" in cache
    }
    ## Else : Calcule of the Inverse of x -> "m"
    m <- solve(x$get())
    ## Set the inverse "m" into x
    x$setinv(m)
    ## Retrun the inverse
    m
}
