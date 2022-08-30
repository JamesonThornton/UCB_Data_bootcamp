# Election Analysis

## Project Overview
Tom is seeking a python script to accurately tabulate votes for the Colorado Board of elections for a U.S. congressional precinct in Colorado. 
script shall tabulate:
- total number of votes cast
- total number for each candidate
- percentage of votes for each candidate
- the winner based on popular vote
- the total number of votes by county
- the percentage of votes by county
- the largest county turn out

## Election Results
Total Votes: 369,711

County Breakdown:
 - Jefferson: 10.5% (38,855)
 - Denver: 82.8% (306,055)
 - Arapahoe: 6.7% (24,801)

Denver County had the largest voter turnout

Candidate Breakdown:
 - Charles Casper Stockham: 23.0% (85,213)
 - Diana DeGette: 73.8% (272,892)
 - Raymon Anthony Doane: 3.1% (11,606)

Winner: Diana DeGette
Winning Vote Count: 272,892
Winning Percentage: 73.8%


## Summary
1. This code can be reused without modification for any election that contains the county name in the second column, and the chosen candidate in the third column and report summary results including candidate and county breakdown as well as the winning candidate. 
2. With modifications this script could be used to:
   - Provide summaries of results across several categories 
     - this could include candidate, precinct, zip code, county, state or other unique qualifier per vote
     - to achieve this we could make blocks of scripts similar to the counties summary block for each category desired
   - with another column indicating the election race, this code could be modified to count and report on multiple elections or referendums in a single input list
     - this would require another column with the election race noted
     - it would also be necesarry to add another layer to the dictionaries to account for the different races for logic, accounting, and reporting purposes