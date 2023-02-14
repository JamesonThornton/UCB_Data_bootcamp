# Module 18 - 
## Overview of Analysis
we seek to use supervised machine learning models to help us classify high risk and low risk loan applicants. the nauture of this data set is very unbalanced with a small percentage being high-risk compared to the vast majority being low-risk. to compensate for this significant imbalance we will use 6 different imbalanced classifiers:

- Random Oversampling
- SMOTE Oversampling
- Undersampling
- Combination over and under sampling
- Balanced Random Forest
- Easy Ensemble AdaBoost Classifier

we will evaluate the performance of each of these techniques for this data set to see if any are notably better perofming and may be preferred. we will use accuracy, recall, precision, F1 score and confusion matrix to help us make this decision. it is possible that none of these techniques are significantly better than any others; if this is the case we will also explain why this result is acceptable. 

## Results
-----------------------------
### Random Over Sampling

![](resources/Random_Oversampling.png)

### SMOTE Oversampling
![](resources/SMOTE_Oversampling.png)

### Undersampling
![](resources/Undersampling.png)

### Combination Over and Under Sampling
![](resources/Combination.png)

### Balanced Random Forest
![](resources/Balanced_Random_Forest.png)

### Easy Ensemble AdaBoost Classifier
![](resources/AdaBoost.png)

## Summary
overall there is a challenge in precisely predicting high-risk loans without misclassifying a relatively large number of low-risk loans as high risk. however, given the very unbalanced nature of the data set this is not entirely surprising. 

for most of the models the recall and accuracy are luke-warm at best. however, the AdaBoost classifier for this data performs relatively well. it still suffers from a low precision on identifying high-risk loans, but it has a very high accuracy (94%) and very good recall for high-risk loans. the f1 score is not great (0.16) but compared to the other models it stands out as being pretty good. 
if the goal is to minimize risk at the expense of missing out on rejecting some low-risk loans in mistaking them as high-risk then the AdaBoost classifier is definitely the best of the set tested here. 
