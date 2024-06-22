library(downloader)

path <- "2024-data.csv"
data <- read.csv(path)
IDs <- data[,1]

for (ID in IDs){
  URL <- paste0("https://ppubs.uspto.gov/dirsearch-public/print/downloadPdf/", ID)
  file <- paste0(ID, ".pdf")
  try(downloader::download(URL, file), silent = FALSE)
}