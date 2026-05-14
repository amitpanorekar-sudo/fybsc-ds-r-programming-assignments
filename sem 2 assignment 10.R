# Installing and loading package

install.packages("ggplot2")

library(ggplot2)


# Importing dataset

data <- read.csv("C:/Users/SDBI/Downloads/secondary_market.csv")


# Displaying first records

head(data)


# Structure of dataset

str(data)


# Dimensions of dataset

dim(data)


# Column names

colnames(data)



# DATA CLEANING AND PREPROCESSING


# Checking missing values

colSums(is.na(data))


# Removing duplicate rows

data <- unique(data)


# Removing missing values

data <- na.omit(data)


# Summary statistics

summary(data)



# EXPLORATORY DATA ANALYSIS


# Histogram of property prices

ggplot(data, aes(price_rub)) +
  geom_histogram(bins = 20)


# Scatter plot of area vs price

ggplot(data, aes(total_area, price_rub)) +
  geom_point()


# Boxplot of prices by seller type

ggplot(data,
       aes(seller_type, price_rub,
           fill = seller_type)) +
  geom_boxplot()


# Bar chart of building type

ggplot(data,
       aes(building_type,
           fill = building_type)) +
  geom_bar()


# Density plot of prices

ggplot(data, aes(price_rub)) +
  geom_density(fill = "lightblue")



# CORRELATION ANALYSIS


# Correlation between area and price

cor(data$total_area,
    data$price_rub)


# Correlation test

cor.test(data$total_area,
         data$price_rub)



# PROBABILITY DISTRIBUTIONS


# Normal distribution

normal_price <- rnorm(
  100,
  mean(data$price_rub),
  sd(data$price_rub)
)

summary(normal_price)


# Binomial distribution

rbinom(20, 10, 0.5)


# Poisson distribution

rpois(20, 5)



# HYPOTHESIS TESTING


# One sample t-test

t.test(data$price_rub,
       mu = 15000000)


# Chi-square test

chisq.test(table(data$seller_type))


# Wilcoxon test

wilcox.test(data$total_area,
            data$price_rub)



# ADDITIONAL ANALYSIS


# Average property price by seller type

aggregate(price_rub ~ seller_type,
          data,
          mean)


# Maximum property price

max(data$price_rub)


# Minimum property price

min(data$price_rub)


# Top 10 expensive properties

top_properties <- data[order(-data$price_rub), ]

head(top_properties, 10)



# FINAL OUTPUT


print("Real estate market analysis completed successfully")
