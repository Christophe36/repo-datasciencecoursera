## this function compute a matrix, and its inverse in twofold  
## first compute the given matrix, its inverse.
# caches its inverse 
# retrieves the inverse from cache memory or computes it , if its doesn't exist 

makeCacheMatrix <- function(x = matrix()) { 
    ## computes the inverse of the matrix x and cached it
    
    M <- NULL
    CacheMatrix <- NULL
    
    M <<- x
    CacheMatrix <<- solve(x)
    x
} 


cacheSolve <- function(x, ...) {
    ## return the inverse matrix of x , 
    #if its exits and x has not changed return the inverse cached
    #else computes the inverse of the new input matrix x
    
    if( all(x == M ) && exists( CacheMatrix )) {
        CacheMatrix               ## Return a matrix that is the inverse of 'x' 
        return
    }
    invCacheMatrix <- solve(M)      ## Return a matrix that is the inverse of 'x' 
    invCacheMatrix
} 
