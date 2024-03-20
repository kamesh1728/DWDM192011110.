EXPERIMENT-10
QUARTILE:
  AIM:
  To write the program for central tendency and data dispersion measures.
PROGRAM:
  names<-c("siri","mahi","chiru")
age<-c(23,24,25)
marks<-c(88,78,25)
df<-data.frame(names,age,marks)
quantile(df $age)
write.csv(df,"datafr.csv")