# Boston-house-prices
Regression model predicting Boston house prices using socioeconomic, structural, and environmental features.

This project builds and compares Linear Regression and Random Forest models to predict median house prices in Boston. The dataset comes from Kaggle, "Boston House Prices-Advanced Regression Techniques".

<h3>Dataset</h3>

Source: Kaggle — Boston House Prices: Advanced Regression Techniques
The dataset contains 506 rows and multiple features.

<h3>Features</h3>

**CRIM** — per capita crime rate

**LSTAT** — % lower-status population

**PTRATIO** — pupil–teacher ratio

**B** — demographic index

**RM** — average number of rooms

**AGE** — proportion of older homes

**TAX** — property tax rate

**NOX** — pollution

**DIS** — distance to employment centres

**RAD** — highway accessibility

**CHAS** — Charles River dummy variable

**ZN**- proportion of residential land zoned for lots over 25,000 sq.ft.

**INDUS** -proportion of non-retail business acres per town

and **MEDV** — median home value (in $1000s)

<h3>Exploratory Data Analysis</h3> showed strong predictors between features and house prices:

Homes with **more rooms (RM)** tend to be more expensive.

Neighbourhoods with a **higher percentage of lower‑status residents (LSTAT)** have lower home values.

Areas with **better school quality (lower PTRATIO)** show higher prices.

**Pollution (NOX)** is associated with lower prices.

Wealthier suburbs tend to be **farther from employment centres (DIS)**.

The correlation matrix also highlighted multicollinearity, particularly between **highway accessibility (RAD)** positively associated with **property tax rate(TAX)** and
**(INDUS)** is also positively associated with **pollution (NOX)**, which affects linear regression coefficient stability.

<h3>Modelling</h3>
Linear regression identified RM, LSTAT, PTRATIO, and NOX as the most influential predictors.
However, multicollinearity made some coefficients unstable, and the model struggled with nonlinear patterns.

The Random Forest model provided a strong performance boost over linear regression by capturing nonlinear relationships and interactions between features. Feature importance analysis identified LSTAT, RM, PTRATIO, NOX, and DIS as the most influential predictors of housing value. Overall, Random Forest delivered higher accuracy and more reliable insights compared to the linear model.


<h3> Findings</h3> 

The linear regression model provided a clear baseline, capturing the main socioeconomic and structural drivers of Boston housing prices. The average number of rooms showed a strong positive relationship with median home value, while % lower-status population, pupil–teacher ratio, and pollution had negative effects, matching real‑world patterns where larger homes, better school quality, and cleaner environments lead to higher property values. The model explained around 70% of the variation in median home value, giving a solid foundation for comparison.
Random Forest delivered a noticeably stronger performance. Because it learns patterns directly from the data rather than assuming linear relationships, it captured nonlinear effects and interactions that the linear model missed. Feature importance highlighted LSTAT, average number of rooms, pupil–teacher ratio, pollution, and distance to employment centres as the most influential predictors, reinforcing the idea that socioeconomic conditions, environmental quality, and home size are the dominant factors shaping property values in Boston. Overall, Random Forest provided more accurate and robust predictions, while linear regression offered interpretable insights that aligned with real‑world housing behaviour.

<h3>Dependencies:</h3> 

This project uses R packages listed in requirements.txt. These are the libraries used throughout the analysis in RStudio.




