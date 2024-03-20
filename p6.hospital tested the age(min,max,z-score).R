age <- 35

min_age <- 0
max_age <- 100  

min_max_normalized <- (age - min_age) / (max_age - min_age)
cat("(i) Min-Max Normalization Result:", min_max_normalized, "\n")

mean_age <- 0  
sd_age <- 12.94

z_score_normalized <- (age - mean_age) / sd_age
cat("(ii) Z-Score Normalization Result:", z_score_normalized, "\n")

scale_factor <- 10^2  

decimal_scaled <- age / scale_factor
cat("(iii) Normalization by Decimal Scaling Result:", decimal_scaled, "\n")
