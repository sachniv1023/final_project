# Personal Loan Campaign Modelling 

Data Overview:
Loan_modelling.csv contains data on 5000 customers. The data include customer demographic information (age, income, etc.), the customer's relationship with the bank (mortgage, securities account, etc.), and the customer response to the last personal loan campaign (Personal Loan).
Among these 5000 customers, only 480 (= 9.6%) accepted the personal loan that was offered to them in the last year's campaign.

Context:
The bank aims to increase borrowers (asset customers) base to bring in more loan business and earn more through the interest on loans. So , the bank wants to convert the liability customers to personal loan customers(while retaining them as depositors). A campaign was ran by the  bank  last year for liability customers showed a healthy conversion rate of over 9% success. The department is now interested in building a model that will help them identify the potential customers who have a higher probability of purchasing the loan. This will increase the success ratio while at the same time reduce the cost of the campaign.


Objective:
To build a machine learning model which can predict:

1) Whether a liability customer will buy a personal loan or not.
2) Which variables are most significant.
3) Which segment of customers should be targeted more.


Data Dictionary:
ID: Customer ID
Age: Customer’s age in completed years
Experience: #years of professional experience
Income: Annual income of the customer (in thousand dollars)
ZIP Code: Home Address ZIP code.
Family: the Family size of the customer
CCAvg: Avg. spending on credit cards per month (in thousand dollars)
Education: Education Level. 1: Undergrad; 2: Graduate;3: Advanced/Professional
Mortgage: Value of house mortgage if any. (in thousand dollars)
Personal_Loan: Did this customer accept the personal loan offered in the last campaign?
Securities_Account: Does the customer have securities account with the bank?
CD_Account: Does the customer have a certificate of deposit (CD) account with the bank?
Online: Do customers use internet banking facilities?
CreditCard: Does the customer use a credit card issued by Bank?


Techniques Used for overall analysis :
- LOad and review data in pandas  using pd.read_csv()
- Inspecting the dataframe by using describe(),checking dataframe's shape, separating out categorical and  continous variables,visualizng the target variable
- Performing Exploratory Data Analysis before diving into model creation.
     1) Performed univariate analysis of continous  and categorical variables.Created a function that returned histograms and box plots for visualizing the data.
     2) Perfomed bivariate analysis of continous and categorical variables
     3) Checked correalations between variables using heatmap.
     
- Performed Pre-processing/Data manipulations:
     1) Checked Duplicate values,NaN values
     2) Dropped columns that were not relevant for our analysis like Zipcode etc
     3) Used ID variable as index of Dataframe
     4) Checked and removed Outliers using IQR method.Outliers were  present for Mortgage,Income, CCAvg.
    
- Performed Feature Engineering :
    1) Created Bank_services variable by combining Online and credit card variable.
    2) Multicollinearity Check using VIF (variance_inflation_factor)
               - Dropped variables that were highly correlated with each other.
    3) Performed feature selection using RFE(Recursive Feature Elimination technique)
    4) Decided on our Evaluation Metric(Recall)
    
-Performed Data modelling for different classification models(Logistic, K-NN ,Decision Tree, Random Forest,Xgboost) to predict the likelihood of a liability customer in buying personal loans
    1) Defined X(independent) and y(dependent) variables
    2) Split X and y using Train test split 70%train and 30% test.
    3) As our target variable was highly imbalanced. We balanced it using RandomOversampling technique.
    4) Normalized the data to bring all the variables to one scale for comparision. We used StandardScaler for this. 
    5) We checked  recall for  Unoptimized models, Optimized models(hyperparamter tuning) and  for models having only subset of features.
    6) We checked the performance using different performance metrics. Tried to optimize Recall for both our test and train dataset. We focused on Recall as bank does not want to miss customers that were interested in taking loan. SO, REcall was our evaluation metric. 
    6) Produced confusion matrix, classification reports, AUC score, Cross val score for all the models. 
    7) Compared all the models based on the above scores.
    
Findings :
After runniing all the models successfully, we got the following results:
      1) Random Forest gave us best Recall of 96%.
      2) Also, Type II(False Negative) errors are close to 2 in Random Forest model.
      3) The area in ROC curve for Random Forest is 0.99 which is close to 1 which suggests that Random Forest is the best model in comparision to other models.
      4) Cross-val score is close to 0.98
      5) Therefore,Random Forest would be the best choice for predicting whether customer would be interested in taking personal loan or not.
      
      
Actionable Insights & Future Recommendations
     1) As we have observed that Income is most important Feature, which indicates that Income has a good effect on Personal Loan, Customers with High Income have more chances of having Personal Loan. So it is advised to Target Customers with high income
     2) CCAvg also show a good relationship with Personal Loan, which means customer who are spending more on credit cards can be targeted for Personal Loan
     3) Since CD account has good relation with Personal loan, customers having CD account can be targeted for personal loans
     4) Customers who has more family members can be targted for personal loan as well, since the relation between Family variable with   personal loan is also good
     5) Customer willing to have high mortgage value can also be targeted for personal loan
     6) Customer whose Education level is high can be targeted for personal loan
     7) Customer using addition bank services like Credit card or online doesn't have any significant impact on personal loan, so   marketing/campaign team must not put more focus on such customers
     
     
For full code Check out my Personal_Loan_Campaign_Final_Version 