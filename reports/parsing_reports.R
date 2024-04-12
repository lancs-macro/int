library(readr)
library(whisker)

# read plain file
report <- rvest::read_html("2024q1/report.html")

# reports <- read_file("2024q1/report.html")
base <- read_file('base.html')

result <- whisker.render(base, list(content = report))

write_lines(result, "report2024q1.html")
