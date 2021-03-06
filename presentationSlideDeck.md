NextWords
========================================================
author: Dinh Tuan Phan
autosize: true
transition: linear
class: smaller
css: style.css

Johns Hopkins University<br />

May 09, 2021

========================================================
# **Overview**

<medium>
- Communicate data product to managers or investors

- Promote the product

- Show the user how the product works

- Explain the product and why it is awesome!

The NextWords App can be used at:

<ul>
    <li><a target="_blank" href="https://dtphan.shinyapps.io/NextWords/">NextWords App on shinyapps.io </a></li>
</ul>

</medium>

========================================================
# **How to build NextWords**

<medium>
- NextWords is a Shiny app on Natural Language Processing

- NextWords predicts the next word when typing using n-gram text prediction algorithm

- Three corpora collected from publicly available sources by a web crawler (blogs, news and twitter data)

- This text library is used to build a  corpus for NextWords App

- N-grams are extracted from the corpus and then used to build the
predictive text model

</medium>

========================================================
# **Text Prediction Model**

<medium>
- Predictive text model was built from a sample of
three large corpora of blogs, news and twitter data

- Sample data was tokenized and cleaned using the 
**tm** package and regular expressions by **gsub** function 

- Sample data was converted to lowercase and performed text cleaning

- The data was split into different n-grams tokens

- As text is entered, the algorithm iterates from longest n-gram (4-gram) to shortest (2-gram) to detect a match
</medium>

========================================================
# **User Interface**
<medium>
The App features a text box to key in your word(s). The output
will be displayed after you've finished typing.
- Enter word(s) in the text box
- The next word is predicted below

To try out the NextWords App on shinyapps.io, click the image below.
</medium>

<a target="_blank" href="https://dtphan.shinyapps.io/NextWords/"><img src="NextWords.png"></a>
