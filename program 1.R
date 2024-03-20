intervals <- c("1-5", "5-15", "15-20", "20-50", "50-80", "80-110")
frequencies <- c(200, 450, 300, 1500, 700, 44)
cumulative <- cumsum(frequencies)
total_freq <- sum(frequencies)
median_index <- which(cumulative >= total_freq / 2)[1]
median_interval <- intervals[median_index]
lower_bound <- as.numeric(strsplit(median_interval, "-")[[1]][1])
upper_bound <- as.numeric(strsplit(median_interval, "-")[[1]][2])
approx_median <- lower_bound + ((total_freq / 2 - cumulative[median_index - 1]) / frequencies[median_index]) * (upper_bound - lower_bound)
cat("Approximate Median Value:", approx_median)
