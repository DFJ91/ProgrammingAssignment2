
#The makeCacheMatrix function first check if the matrix that we want to calculate its inverse is a square matrix 
#and if this is true then its calculates the inverse of the matrix. 
#The inverse matrix and the original matrix are saved in the memory.

makeCacheMatrix <- function(x = matrix()) {
        if (nrow(x) != ncol(x)){message("q is not a square matrix")}
        else{ entrada1 <<-x
        sal <- solve(x)
        salida<<-sal  
        print(salida)}
}

#1. Check if the matrix is invertible
#2. If the matrix is invertible the function calculates the inverse of the matrix
#and save it in the memory

}


## The cacheSolve function first read the original matrix that have been used in the makeCacheMatrix and check if the dimensions
## of that matrix are the same. If the dimension of the matrix that have been introduced in cacheSolve function is different 
##then the function calculate the inverse. If the dimension are the same then the function compare one by one all the elements
#of the two matrix. If all the elements are the same then the function read the inverse matrix saved during the execution of 
## the makeCacheMatrix function. If any element is different then the function calculates the inverse of the matrix.

cacheSolve <- function(x, ...) {
        p<-0
        entrada<-x
        en<- as.matrix(entrada1)
        
        if(nrow(en) != nrow(entrada)){p=1}
        else{if(ncol(en) != ncol(entrada)){p=1}}
        
        if (p==1){salact <- solve(entrada)
        message("calculating inverse")
        salidaact<<-salact  
        print(salidaact)} 
        
        if (p==0){
                for (i in nrow(entrada)){
                        for(j in ncol(entrada)){
                                if (en[i,j] != entrada[i,j]){p=1}
                        }
                }
                
                if (p==1){sal <- solve(entrada)
                message("calculating inverse")
                salidaact<<-sal  
                print(salidaact)}else{message("reading cache")
                        print(salida) }
        }        
}

#1. Check if the dimension of the two matrix are the same
#if they are not then the function calculates the inverse of the matrix
#2. if the dimensions are the same then the function compare all the
#elements one by one. If all the elements are the same then the function
# load the inverse matrix saved in the makeCacheMatrix function.
# if any element is different then the function calculates the inverse of the matrix

}
