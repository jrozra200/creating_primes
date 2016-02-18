There are 2 scripts here that are identical in function: finding prime numbers in a specified range.

creating_primes.R
creating_primes.py

I wanted to see the difference in performance between the two. While I wasn't surprised to see Python performing better than R, I was, however, suprised to see by how much.

Here are the results of running both scripts in different contexts over the range 2 to 100,000:

	RStudio: 8:16.50
	R Shell: 8:09.69
	SparkR Shell: 8:25.80
	Python Shell: 1:11.89
	pySpark: 1:12.67

I should comment that the Spark "cluster" is just a local instance on my laptop. I believe that to get the best performance out of Spark you have to utilize it's dataframes and distribute across a cluster, niether of which I am doing here for this test. 

In any case - I was curious and this is what I found out - now I am sharing with you!

Jake
