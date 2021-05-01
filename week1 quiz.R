size <- file.info('./final/en_US/en_US.blogs.txt')
kb <- size$size/1024
mb<- kb/1024
mb

twitter <- readLines(con = file('./final/en_US/en_US.twitter.txt'),
                     encoding = "UTF-8", skipNul = TRUE)
length(twitter)

