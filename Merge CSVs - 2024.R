setwd("directory")
filenames <- list.files(full.names=TRUE)

All <- lapply(filenames, function(i){
  read.csv(i, header=FALSE)
})

df <- do.call(rbind.data.frame, All)

head(df)

write.csv(df, "2024-data.csv", row.names=FALSE)