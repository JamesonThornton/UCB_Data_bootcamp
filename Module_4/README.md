# Student Data Analysis

## Project Overview
Maria seeks analysis on an updated data set of student information. the data includes the following in a csv:
- Student ID
- Student Name
- Grade
- School Name
- Reading Score
- Math Score
- School Type
- School Budget

![Raw_Data_Screenshot](Resources/Raw_Data_Screen_Shot.png)

### expected steps
- The data is to be loaded in to python leveraging the pandas library. 
- drop any null values from the data frame. 
- drop duplicates from the data
- convert types as needed to be more in line with intuitive expectations (eg. grade level from "9th"[string] to 9[int])
- provide summary statistics for the dataset [using .describe()]
- develop additional analysis and conclusions from the data set

## Data Summary Results
detailed results can be found at the jupyter notebook at the link below:

[jupyter notebook analysis](Modified.ipynb)



## Conclusion

there are a significant number of null reading (1968) and math scores (982). it may be useful to understand why they are null and perhaps find another method to mitigate rather drop the entire rows (perhaps set them to average or NaN). 

based on the data still available the primary take-aways I saw were that generally the charter schools appeared to have less funding and produce slightly higher reading scores. 


|School Type  | Average Budget    | Average Reading Score | Average Math Score  |
|-------------|-------------------|-----------------------|---------------------|
|Public       |   $911,195        |72.281219              |   62.951576         |
|Charter      |   $872,625        |72.450603              |   66.761883         |


However we may need to account for additional variables such as school size (and the impact of dropping the null values) to understand if these initial findings are statistically significant. utilizing visuals such as scatter plots may also help us to quickly determine any abberant data or help us establish if the trends are more reliable. 