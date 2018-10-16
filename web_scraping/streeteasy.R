library(rvest)


#Specifying the url for desired website to be scrapped
url <- 'http://streeteasy.com/for-rent/uws/status:open%7Cprice:2000-2750%7Cbaths%3E=1?view=details'

#Reading the HTML code from the website
webpage <- read_html(url)


#Using CSS selectors to scrap the various sections and then convert them to text section
title_data_html <- html_nodes(webpage,'.details-title a')
title_data <- html_text(title_data_html)

rentals <- html_nodes(webpage,'.listings > li.item')

rentals <- html_nodes(webpage, '.details-title a')
sites <- rentals %>% html_attr("href")



price_data <- html_text(html_nodes(webpage, '.price-info > .price'))

dets_data <- html_text(html_nodes(webpage, '.price-info + .details_info *'))





