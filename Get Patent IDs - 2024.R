library(patentr)

weeks <- 1:52

for(week_num in weeks){
  file <- paste0("path/2024-", week_num, "-data.csv")
  try(get_bulk_patent_data(year = 2024, week = week_num, output_file = file), silent = FALSE)
}
