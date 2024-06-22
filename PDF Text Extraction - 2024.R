library(pdftools)
library(tesseract)

path <- "2024-data.csv"
data <- read.csv(path)
IDs <- data[,1]
files <- 1:10000

for (ID in IDs){
  path2 <- paste0(, ID, ".pdf")
  pngfile <- pdftools::pdf_convert(path2, dpi = 200)
  text <- tesseract::ocr(pngfile)
  text_name <- paste0("patent", ID, ".txt")
  write.table(text, file = text_name, sep = "\t", row.names = FALSE)
  for (file in files){
    name <- paste0(ID, "_", file, ".png")
    file.remove(name)
  }
}
