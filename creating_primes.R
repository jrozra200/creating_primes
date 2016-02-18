## THIS CREATES A LIST/DATAFRAME OF PRIME NUMBERS
## OPTIONAL INPUTS ALLOW USER TO SPECIFY THE STARTING POINT, ENDING POINT, AND
## WHETHER OR NOT YOU WANT THE RESULTS OUTPUTTED TO A CSV
creating_primes <- function(start = 2, end = 10000, output_results = FALSE){
        if(start < 2){          # MUST HAVE A VALID STARTING POINT
                start <- 2
        } 
        
        if(end < start){        # MUST HAVE A VALID ENDING POINT
                end <- start
        }
        
        primes <- data.frame()  # EMPTY DATA FRAME TO STORE THE RESULTS
        
        place <- 1              # INDEX VALUE FOR THE PRIME NUMBERS
        
        ## LOOP THROUGH THE RANGE OF INTEREST
        for(i in start:end){
                ## CHECK THE RANGE BETWEEN 1 AND THE CURRENT NUMBER i
                for(j in 1:i){
                        if((i %% j == 0) & (j != 1) & (i != j)){
                                break   ## BREAK OUT OF THE LOOP IF IT IS 
                                        ## DIVISIBLE BY ANYTHING OTHER THAN 1 
                                        ## OR ITSELF
                        }
                        
                        ## IT IS A PRIME NUMBER IF WE GET TO THE END OF THE LOOP
                        if (i == j){
                                primes[place, 1] <- i
                                place = place + 1       ## INCREASE INDEX LEVEL
                        }
                }
        }
        
        ## OUTPUT THE RESULTS TO A CSV BASED ON THE USERS PREFERENCE
        if(output_results == TRUE){
                write.csv(primes, "primes.csv", row.names = FALSE)
        }
        
        ## RETURN THE RESULTS
        return(primes)
}

## SOME SAMPLE FUNCTION CALLS
primes <- creating_primes()
primes <- creating_primes(start = 2, end = 100000, output = FALSE)
primes <- creating_primes(start = 100, end = 10000, output = TRUE)