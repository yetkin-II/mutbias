bm = c(rnorm(1000, mean=1), rnorm(1000, mean=5))
hist(bm, br=40)

mean_n100 = sapply(1:10000, function(i) {mean(sample(bm,100))} )
hist(mean_n100, br=40)
