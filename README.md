# Kickstarting with Excel

## Overview of Project
This project explores a dataset of kickstarter campaigns for our fictional client "Louise" to help her understand what may help a campaign improve success. 
(we are also seeking to practice and demonstrate our skill with Excel, and learn how to use GitHub)

### Purpose
"Louise" is interested in creating a kickstarter campaign for her new play 'Fever' and wants to understand how to increase liklihood of success. 
we will explore how launch data and setting of monitary goals may impact the success of campaigns for theatrical plays. 

## Analysis and Challenges
our initial data set {link here} contains over 4000 campaigns across more than a dozen major categories. one initial item to be adjusted is the date format representation. it is provided in Unix timestamp so we convert it to a more easily human readable format (MM/DD/YYYY for US user)

### Analysis of Outcomes Based on Launch Date
we explored the relation between the success of a theatrical play campaign and the start date of the campaign. we can see the graphical results of the data in the chart below:

![Campaign Outcome based on Launch Date](https://raw.githubusercontent.com/JamesonThornton/UCB_Data_bootcamp/main/Launch_Time_Success_Correlation_by_month.png)

we see a general trend of higher success in the spring time, peaking in May and continuing to decline throughout the year with the least successful time of campaigns starting in December. 

### Analysis of Outcomes Based on Goals
We explore the relation between success of a theatrical play campaign and the fundraising goal. 
The data is displayed in a chart below for reference:

![Campagin Outcome based on Goal](https://raw.githubusercontent.com/JamesonThornton/UCB_Data_bootcamp/main/Outcomes_vs_Goals.png)

somewhat unsurprisingly we see a higher success rate of theeatrical play campaigns with lower fundraising goals. we see the success rate begins to invert between $15,000 and $20,000 goals with failure being more likely than success. we see another inversion from $35,000 to $45,000; this is not yet understood and may be looked into further. 

### Challenges and Difficulties Encountered
Unix timestamps were the first issue to resolve. from there minor issues were encounted in cell referencing for the formulas and needing to adjust between successful and failed campaigns. 


## Results

- What are two conclusions you can draw about the Outcomes based on Launch Date?

- What can you conclude about the Outcomes based on Goals?

- What are some limitations of this dataset?

- What are some other possible tables and/or graphs that we could create?
