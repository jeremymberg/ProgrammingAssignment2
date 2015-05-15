## The first function, makeCacheMatrix, create a list of functions
## to set and get a matrix and to set and get the corresponding
## inverse matrix. This is analogous to the makeVector function in the
## example.

## The second function calculates the inverse of the matrix but first
## checks to see if the inverse has already been calculated and cached.
## In this case, it returns the cached inverse and notes that this is 
## a cached response. This is analogous to the cachemean as an example.

## This function generates a "matrix" including an associate object
## corresponding to its inverse called "inv". The final list includes
## set, get, setinverse, getinverse.

makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL
        set <- function(y) {
                x <<- y
                inv <<- NULL
        }
        get <- function() x
        setinverse <- function(inverse) inv <<- inverse
        getinverse <- function() inv
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
