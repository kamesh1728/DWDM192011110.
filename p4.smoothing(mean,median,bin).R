data <- c(11, 13, 13, 15, 15, 16, 19, 20, 20, 20, 21, 21, 22, 23, 24, 30, 40, 45, 45, 45, 71, 72, 73, 75)

num_bins <- 5

bin_width <- (max(data) - min(data)) / num_bins

bin_mean_smoothing <- function(data, num_bins) {
  bins <- cut(data, breaks = num_bins, labels = FALSE)
  bin_means <- tapply(data, bins, mean)
  smoothed_data <- bin_means[bins]
  return(smoothed_data)
}

bin_median_smoothing <- function(data, num_bins) {
  bins <- cut(data, breaks = num_bins, labels = FALSE)
  bin_medians <- tapply(data, bins, median)
  smoothed_data <- bin_medians[bins]
  return(smoothed_data)
}

bin_boundaries_smoothing <- function(data, num_bins) {
  bins <- cut(data, breaks = num_bins)
  bin_boundaries <- as.numeric(levels(bins))[bins]
  smoothed_data <- bin_boundaries
  return(smoothed_data)
}

smoothed_mean <- bin_mean_smoothing(data, num_bins)

cat("Smoothing by bin mean:\n")
print(smoothed_mean)

smoothed_median <- bin_median_smoothing(data, num_bins)

cat("Smoothing by bin median:\n")
print(smoothed_median)

smoothed_boundaries <- bin_boundaries_smoothing(data, num_bins)

cat("Smoothing by bin boundaries:\n")
print(smoothed_boundaries)
