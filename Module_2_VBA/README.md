# Analyzing Green Stocks with VBA

## Project Overview
Steve is assisting his parents with stock investments. They are very interested in supporting green energy and are especially interested in a particular company called DAQO New Energy Corporation.
Steve believes there should be further diversification to the investment porfolio and has asked us to look through several other green companies for potential investment. 

### Purpose
develop VBA scripts to analyze available data on a dozen different stocks for the years 2017 and 2018. 
learn about some basics in VBA including:
* loops
* pop-ups
* cell formatting
* code refactoring

## Results
Steve's parents interst in DQ is likely based on 2017 information when it performed very well (almost 200% gain!). however in 2018 it performed rather poorly shrinking by over 60%. ENPH shows stronger performance over the two year period. 

after refactoring the initial VBA code it runs significantly faster. 

the initial run took about 0.78 second:

![Initial 2018 Run](https://github.com/JamesonThornton/UCB_Data_bootcamp/blob/main/Module_2_VBA/resources/VBA_Challenge_2018_original.png?raw=true)

compared to the refactored code which tool about 0.10 seconds to run:

![refactored 2018 Run](https://github.com/JamesonThornton/UCB_Data_bootcamp/blob/main/Module_2_VBA/resources/VBA_Challenge_2018_refactored.png?raw=true)

this is an improvement of nearly 8X. 

the primary driver for this gain in efficiency is the way in which we loop through the data. 

the initial code set had nested for loops. the outer loop has 12 rounds, one for each ticker symbol, but for each it loops through the entire data set of ~3000 rows. 
this is essentially looping through 36k rows of data

'''
For i = 0 to 11
.....
   For j = to rowStart to rowEnd
...
   next j
next i
'''

the refactored code only loops through the data once (3k rows) and stores information as it traverses. 

'''
For i = 2 to RowCount
....
next i
For i = 0 to 11
....
next i
'''

## Limitations
This code does have some noted limitations. as it loops through the stock symbols it assumes that each symbol is clumped together, and that it is in chronological order. if the data were not in this assumed order the results would be significnatly incorrect for both volume (needs contiguous ticker symbols, though dates dont matter) and for the total gains/losses (which assumes the first instance of a ticker symbol is the earliest, and the last is the latest). 

to combat both of these we could consider sorting the data first by ticker symbol and then by date. alternatively we could filter by ticker symbol and add the volumes, and also search for the earliest and latest time stamps and take the difference of their close values (likely by having a variable for each which is updated if it finds a later or earlier date to find the min and max)

## Summary
Loops are great, but they can consume a lot of time especially when nested. consider how to minimize the total loops you may need and how nesting may impact performance. 

the initial code was simpler for a beginner as to not to have to worry about arrays, but it was notably slower. the newer code is much faster but a little more comples with the arrays. 

refactoring code can be a great way to improve performance, usability, readability, or other characterstics that are desirable. however, we should be aware of spending too much time to refactor something that may already be adequate for our needs. if we never expect to analyze thousands of stock symbols in this worksheet then 1 second of run time may be totally acceptable. another cautionary item is that we should save working versions of our code before embarking on significant changes lest we break something that was working. slow code is preferable to broken code. 
