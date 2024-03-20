ages <- c(13, 15, 16, 16, 19, 20, 20, 21, 22, 22, 25, 25, 25, 25, 30, 33, 33, 35, 35, 35, 35, 36, 40, 45, 46, 52, 70)

mean_age <- mean(ages)
median_age <- median(ages)

cat("Mean:", mean_age, "\n")
cat("Median:", median_age, "\n")

mode_age <- names(sort(table(ages), decreasing = TRUE))[1]
modality <- length(unique(ages)) - length(table(ages))

cat("Mode:", mode_age, "\n")
cat("Modality:", ifelse(modality == 0, "Unimodal", paste0(modality, " modal")), "\n")

midrange_age <- (min(ages) + max(ages)) / 2
cat("Midrange:", midrange_age, "\n")

q1 <- quantile(ages, 0.25)
q3 <- quantile(ages, 0.75)

cat("First Quartile (Q1):", q1, "\n")
cat("Third Quartile (Q3):", q3, "\n")
