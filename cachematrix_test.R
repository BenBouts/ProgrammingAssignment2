########################
## TEST cahcematrix.R ##
########################

source("cachematrix.R")

m <- matrix(1:4, nrow = 2)

mat <- makeCacheMatrix(m)

print(mat$get())
print(mat$getinv())
cacheSolve(mat)

print(mat$getinv())
