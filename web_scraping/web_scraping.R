library(rvest)


#Specifying the url for desired website to be scrapped
url <- 'http://www.imdb.com/search/title?count=100&release_date=2016,2016&title_type=feature'


#Reading the HTML code from the website
webpage <- read_html(url)


#Using CSS selectors to scrap the rankings section
rank_data_html <- html_nodes(webpage,'.text-primary')
#Converting the ranking data to text
rank_data <- html_text(rank_data_html)


title_data_html <- html_nodes(webpage,'.lister-item-header a')
title_data <- html_text(title_data_html)

desc_data_html <- html_nodes(webpage,'.ratings-bar + p')
desc_data <- html_text(desc_data_html)


rtng_data_html <- html_nodes(webpage,'.ratings-imdb-rating strong')
rtng_data <- html_text(rtng_data_html)


metascr_data_html <- html_nodes(webpage,'.ratings-metascore span')
metascr_data <- html_text(metascr_data_html)

year_data_html <- html_nodes(webpage,'.lister-item-year')
year_data <- html_text(year_data_html)


vote_data_html <- html_nodes(webpage,'.sort-num_votes-visible :nth-child(2)')
vote_data <- html_text(vote_data_html)

gross_data_html <- html_nodes(webpage,'.sort-num_votes-visible :nth-child(5)')
gross_data <- html_text(gross_data_html)

gross_data_html <- html_nodes(webpage,'.sort-num_votes-visible :nth-child(5)')
gross_data <- html_text(gross_data_html)

# Description: The description of the feature film.
# Runtime: The duration of the feature film.
# Genre: The genre of the feature film,
# Director: The main director of the feature film. Note, in case of multiple directors, I'll take only the first.
# Actor: The main actor of the feature film. Note, in case of multiple actors, I'll take only the first.


## Scraping street easy