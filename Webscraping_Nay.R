
# Eminem Example For Nay --------------------------------------------------
library(rvest)

## Lets try to read Lose yourself by Eminem
em <- read_html("https://www.allthelyrics.com/lyrics/eminem/lose_yourself-lyrics-10632.html")

## Here is the title
em %>%
  html_nodes(".page-title") %>%
  html_text()

## Here are the lyrics to the rap
em %>%
  html_nodes(".content-text-inner") %>%
  html_text()



# Lets try to download all of the lyrics ----------------------------------------------------

em.all <- read_html("https://www.allthelyrics.com/lyrics/eminem")

raps <- em.all %>%
  html_nodes(".lyrics-list-item") %>%
  # html_attr("href")
  html_text()

raps # Here are the raps


urls <- em.all %>%
  html_nodes("a") %>%
  html_attr("href")

urls # Here is every URL

length(raps)
length(urls)

# Note they don't match up. You will have to do some cleaning first before you can continue.
# After that, you simply can use a for loop and you will be done pretty quickly


