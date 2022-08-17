# Kickstarting with Excel

## Overview of Project
This project explores a dataset of kickstarter campaigns for our fictional client "Louise" to help her understand what may help a campaign improve success. 
(we are also seeking to practice and demonstrate our skill with Excel, and learn how to use GitHub)

### Purpose
"Louise" is interested in creating a kickstarter campaign for her new play 'Fever' and wants to understand how to increase liklihood of success. 
we will explore how launch data and setting of monitary goals may impact the success of campaigns for theatrical plays and present some initial conclusions. 

## Analysis and Challenges
Below is a screenshot of the first few rows of our initial raw data set
![Raw_Data_Snippit](https://github.com/JamesonThornton/UCB_Data_bootcamp/blob/main/Raw_Data.png?raw=true)
it contains over 4000 campaigns across more than a dozen major categories. one initial item to be adjusted is the date format representation. it is provided in Unix timestamp so we convert it to a more easily human readable format (MM/DD/YYYY for US user)

A further data engineering task was to break apart the Category and Subcategory for easier filtering. 

### Analysis of Outcomes Based on Launch Date
we explored the relation between the success of a theatrical play campaign and the start date of the campaign. we can see the graphical results of the data in the chart below:

![Campaign Outcome based on Launch Date](https://raw.githubusercontent.com/JamesonThornton/UCB_Data_bootcamp/main/Launch_Time_Success_Correlation_by_month.png)

we see a general trend of higher success in the spring time, peaking in May and continuing to decline throughout the year with the least successful time of campaigns starting in December. 

cancellations do not seem to be correlated with time of year for launch date.

### Analysis of Outcomes Based on Goals
We explore the relation between success of a theatrical play campaign and the fundraising goal. 
The data is displayed in a chart below for reference:

![Campagin Outcome based on Goal](https://raw.githubusercontent.com/JamesonThornton/UCB_Data_bootcamp/main/Outcomes_vs_Goals.png)

somewhat unsurprisingly we see a higher success rate of theeatrical play campaigns with lower fundraising goals. we see the success rate begins to invert between $15,000 and $20,000 goals with failure being more likely than success. we see another inversion from $35,000 to $45,000; this is not yet understood and may be looked into further. 

### Challenges and Difficulties Encountered
Unix timestamps were the first issue to resolve. from there minor issues were encounted in cell referencing for the formulas and needing to adjust between successful and failed campaigns. 

some campaigns had no backers which initially resulted in division by zero errors when considering average contributions; this was resolved with conditional statements. 


## Results
we recommend that Louise launch her campaign in the spring time (April or May), if possible, and avoid starting at the end of the year (or continuing into January). 

reducing the goal amount will increase liklihood of Louise's success rate. her initial contemplated goal of about $12,000 is nearly even odds of success or failure. 

### Limitations

One clear limitation is the vintage of the data, from 2011 to 2017. when initially viewed by year the amount of campaigns has greatly increased in 2016 and 2017. having more recent data may yield different results, or at least provide more data to soidify any conclusions. 

while country is available, the United States is a very large and diverse country. further geographic breakdowns may present additional information relevant to Louise in her decision. 

another limitation relating to plays is a qualitative aspect of the play theme. are some themes more attractive than others? this analysis does not contemplate this detail. it may be possible to do some analysis using the blurb and some language processing. 

### Other areas to explore
We may wish to further explore the relative rate of success as a ratio of total funding compared to the goal, rather than a binary success/fail. 
we may also want to consider the rate of success (in percent) rather than actual numbers based on start date. 
further we can explore how the duration of a campaign may affect success rate (and percent of goal met in addition to binary success/fail)

