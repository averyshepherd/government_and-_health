# government_and_health

Model Created for Biostatistics in Spring 2019

Introduction

Objectives: Investigate how government investment in health affects weight of its constituents (as explained by BMI). Government investment is explained by domestic general government health expenditure (GGHE-D) as percentage of gross domestic product (GDP) (%) and existence of an operational, multisectoral national non-communicable disease (NCD) policy, strategy or action plan that integrates several NCDs and their risk. I am motivated because I believe that governments should intervene in their population’s health.

Research Hypotheses: I expect that, controlling for existence of NCD, as GGHE-D increases, so will BMI. I believe that countries with an existing NCD policy, controlling for GHE-D, will have a higher BMI. Additionally, I believe that there will be interaction between NCD policies and GGHE-D, countries with policies and higher GGHE-D having higher BMI. 


Methods

Data Collection: From World Health Organization’s Database
•	Subjects include all countries recognized by the UN
•	194 countries were recorded, 164 countries were used
•	Data was removed if it was indicated that there was no data collected for that country.  
Measures: 
•	BMI- mean BMI in kg/m^2
•	GGHE-D measured as Percent GDP (%)
•	Existence of NCD as “Yes” or “No”
Analysis Method: 
•	Analysis was run in  R version 3.5.2 (2019-12-20)
•	Data was modeled using a general linear model. 
 
 
Descriptives

Response Variable: 
Descriptive Statistics (n = 126)
	         Median	IQR
BMI (mean)	26.3	3.5

Explanatory Variables: 
Descriptive Statistics (n = 126)
	     Median	IQR
GGHE-D	3.2	2.7

Descriptive Statistics (n = 126)
                        No	Yes
Existence of NCD Policy	92	71

 
Results

Model Results
![Screen Shot 2020-09-15 at 11 06 37 AM](https://user-images.githubusercontent.com/68312092/93235751-99988300-f743-11ea-8003-99318095235a.png)
Residual standard error: 2.002 on 159 degrees of freedom
Multiple R-squared:  0.2617,	Adjusted R-squared:  0.2477 
F-statistic: 18.78 on 3 and 159 DF,  p-value: 1.766e-10


Plot:

![Picture1](https://user-images.githubusercontent.com/68312092/93235546-55a57e00-f743-11ea-96c0-9990663a2097.png)

There is no significant interaction between GGHE-D and the existence of an NCD policy, as they relate to mean BMI.


Assumptions:
1.	Random Sample - Experimental Design
2.	Independent Observations - Experimental Design
3.	Numeric explanatory variables are linearly related to the response variable – Scatter Plot
4.	Normally Distributed Residuals – Residual Plot
    a.	Failed, but continuing with analysis
5.	Homoscedastic Residuals – Histogram of Residuals


Discussion

Interpretation:  
•	GGHE-D was a significant predictor (t=5.78, p= 3.84e-08) when controlling for existence of an NCD policy. In countries with no NCD policy, for every 1% increase in GGHE-D there is a 5.78 kg/m2 increase in BMI. This was expected, as it relates to my hypothesis. 
•	Existence of an NCD policy did not significantly contribute to the variance in mean BMI when controlling for GGHED (t=.663, p=0.508). This was unexpected, as it relates to my hypothesis. 
•	There is no significant interaction between NCD policies and GGHE-D (t=0.309, p=0.758), which is not expected, as it relates to my hypothesis.

Limitations:  
•	The data did not have equally distributed residuals.
•	A confounding variable could be that existence of NCD policies does not specify if it is weight related. If the policies were specifically weight related, the variable could be significant. 

Implications and Future Research: 
In general, a government’s monetary investment in health is positively related with BMI, while action plans such as NCD related policies do not have an effect on BMI. For future research, I would look at different type of NCD policies to see if any specific ones are significantly related to BMI of the country. 


References: 
Sacks, G., Swinburn, B., & Lawrence, M. (2009). Obesity Policy Action framework and analysis grids for a comprehensive policy approach to reducing obesity. Obesity Reviews, 10(1), 76-86. doi:10.1111/j.1467-789x.2008.00524.
World Health Organization, Global Health Observatory data repository. (2017). Mean body mass index trends among adults, crude (kg/m²) Estimates by country [Data File]. Retrieved from http://apps.who.int/gho/data/view.main.BMIMEANADULTCv
World Health Organization, Global Health Observatory data repository. (2017). Domestic general government health expenditure (GGHE-D) as percentage of gross domestic product (GDP) (%) Data by country [Data File]. Retrieved from http://apps.who.int/gho/data/view.main.GHEDGGHEDGDPSHA2011v
World Health Organization, Global Health Observatory data repository. (2017). Existence of an operational, multisectoral national NCD policy, strategy or action plan that integrates several NCDs and their risk factors (Noncommunicable diseases) [Data File]. Retrieved from http://apps.who.int/gho/data/view.main.2473
