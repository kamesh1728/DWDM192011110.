data <- c(200, 300, 400, 600, 1000)
min_max <- (data - min(data)) / (max(data) - min(data))

cat("(a) Min-Max Normalization Result:\n")
print(min_max)
z_score <- (data - mean(data)) / sd(data)

cat("(b) Z-Score Normalization Result:\n")
print(z_score)
