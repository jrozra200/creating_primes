## IMPORT THE NECESSARY LIBRARY
import pandas as pd

## THIS CREATES A LIST/DATAFRAME OF PRIME NUMBERS
## OPTIONAL INPUTS ALLOW USER TO SPECIFY THE STARTING POINT, ENDING POINT, AND
## WHETHER OR NOT YOU WANT THE RESULTS OUTPUTTED TO A CSV
def creating_primes(start = 2, end = 10000, output = False):
        if start < 2:           # MUST HAVE A VALID STARTING POINT
                start = 2
        
        if end < start:         # MUST HAVE A VALID ENDING POINT
                end = start
        
        primes = pd.DataFrame() # EMPTY DATA FRAME TO STORE THE RESULTS
        
        ## LOOP THROUGH THE RANGE OF INTEREST
        for i in range(start, end):
                ## CHECK THE RANGE BETWEEN 1 AND THE CURRENT NUMBER i
                for j in range(1, i):
                        if (i % j == 0) and (j != 1) and (i != j):
                                break   ## BREAK OUT OF THE LOOP IF IT IS 
                                        ## DIVISIBLE BY ANYTHING OTHER THAN 1 
                                        ## OR ITSELF
                
                ## ITS A PRIME NUMBER IF THE LOOP DOESN'T BREAK        
                else:
                        prime = pd.DataFrame([i])
                        primes = primes.append(prime, ignore_index = True)
                
                ## OUTPUT THE RESULTS TO A CSV BASED ON THE USERS PREFERENCE
                if output == True:
                        primes.to_csv("primes.csv")
        
        ## RETURN THE RESULTS
        return primes

## SOME SAMPLE FUNCTION CALLS
primes = creating_primes()
primes = creating_primes(start = 2, end = 100000, output = False)
primes = creating_primes(start = 100, end = 10000, output = True)
