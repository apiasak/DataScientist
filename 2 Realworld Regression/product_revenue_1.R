#Blog name : Product revenue prediction with R – part 1
#
#Blog link : http://www.tatvic.com/blog/product-revenue-prediction-with-r/
#
#Here R code provided for rough implmentation of linear regression model and checking summary statics
######################################################################################################

#To load dataset in data object from local directory
#get working directory 
getwd()

#set working directory
setwd("D:/TATVIC-ML/R-code/ds/")

#load csv data to "data" object
data <- read.csv("product_revenue.csv")

#To check summary of dataset
summary(data)

#To check total numbers of rows
nrow(data)

#To get data variables in separate R variable
yitemrevenue <- data$yitemrevenue
xcartadd <- data$xcartadd
xcartuniqadd <- data$xcartuniqadd
xcartaddtotalrs <- data$xcartaddtotalrs
xcartremove <- data$xcartremove
xcardtremovetotal <- data$xcardtremovetotal
xcardtremovetotalrs <- data$xcardtremovetotalrs
xproductviews <- data$xproductviews
xuniqprodview <- data$xuniqprodview
xprodviewinrs <- data$xprodviewinrs


#To develop Regression model for with ourliers dataset
model <- lm(formula=yitemrevenue ~ xcartadd + xcartuniqadd + xcartaddtotalrs + xcartremove + xcardtremovetotal + xcardtremovetotalrs + xproductviews + xuniqprodview + xprodviewinrs , data = data)

#To check summary of model
summary(model)


#you can get more information at http://www.tatvic.com/blog/product-revenue-prediction-with-r-part-2 for improvement of this model 