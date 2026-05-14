# Creating sales dataset

sales_data <- data.frame(
  Product = c("Laptop", "Mobile", "Shoes", "Watch", "Tablet",
              "Laptop", "Mobile", "Shoes", "Tablet", "Watch"),
  
  Category = c("Electronics", "Electronics", "Fashion", "Fashion",
               "Electronics", "Electronics", "Electronics",
               "Fashion", "Electronics", "Fashion"),
  
  Quantity = c(15, 40, 55, 25, 30, 20, 60, 35, 45, 10),
  
  Price = c(55000, 20000, 3000, 5000, 25000,
            60000, 18000, 3500, 27000, 4500)
)

# Creating Revenue column
sales_data$Revenue <- sales_data$Quantity * sales_data$Price

# Saving dataset as CSV
write.csv(sales_data, "sales.csv", row.names = FALSE)


# Reading CSV file
data <- read.csv("sales.csv")


# a) Display first 10 records
head(data, 10)


# b) Total revenue for each product
aggregate(Revenue ~ Product, data, sum)


# c) Top 5 products with highest revenue
top_products <- data[order(-data$Revenue), ]

head(top_products, 5)


# d) Sales where quantity sold is greater than 50
subset(data, Quantity > 50)


# e) Average product price by category
aggregate(Price ~ Category, data, mean)

#Q2) Creating customer dataset

customers_data <- data.frame(
  CustomerID = 1:10,
  
  Name = c("Rahul", "Sneha", "Amit", "Priya", "Karan",
           "Neha", "Rohit", "Pooja", "Arjun", "Simran"),
  
  Gender = c("Male", "Female", "Male", "Female", "Male",
             "Female", "Male", "Female", "Male", "Female"),
  
  Age = c(22, 35, 28, 45, 19, 52, 31, 24, 48, 60),
  
  PurchaseAmount = c(12000, 25000, 18000, 32000, 9000,
                     40000, 22000, 15000, 28000, 50000)
)

# Saving dataset as CSV
write.csv(customers_data, "customers.csv", row.names = FALSE)


# Reading dataset
data <- read.csv("customers.csv")


# a) Display first 10 records
head(data, 10)


# b) Calculate average purchase amount
avg_purchase <- mean(data$PurchaseAmount)

print(avg_purchase)


# c) Find customers above average purchase amount
subset(data, PurchaseAmount > avg_purchase)


# d) Count number of male and female customers
table(data$Gender)


# e) Create age groups
data$AgeGroup <- ifelse(data$Age < 25,
                        "Youth",
                        ifelse(data$Age <= 50,
                               "Adult",
                               "Senior"))

print(data)


# f) Top 10 highest spending customers
top_customers <- data[order(-data$PurchaseAmount), ]

head(top_customers, 10)


#Q3)# Creating transaction dataset

transactions_data <- data.frame(
  AccountID = c(101, 102, 103, 104, 105,
                106, 107, 108, 109, 110),
  
  CustomerName = c("Rahul", "Sneha", "Amit", "Priya", "Karan",
                   "Neha", "Rohit", "Pooja", "Arjun", "Simran"),
  
  TransactionType = c("Deposit", "Withdrawal", "Deposit",
                      "Withdrawal", "Deposit", "Deposit",
                      "Withdrawal", "Deposit", "Withdrawal",
                      "Deposit"),
  
  Amount = c(15000, 8000, 25000, 12000, 30000,
             18000, 7000, 22000, 15000, 40000)
)

# Saving dataset as CSV
write.csv(transactions_data, "transactions.csv", row.names = FALSE)


# Reading dataset
data <- read.csv("transactions.csv")


# a) Display first 10 records
head(data, 10)


# b) Calculate total deposits
total_deposit <- sum(data$Amount[data$TransactionType == "Deposit"])

print(total_deposit)


# c) Calculate total withdrawals
total_withdrawal <- sum(data$Amount[data$TransactionType == "Withdrawal"])

print(total_withdrawal)


# d) Find accounts with transactions above 10000
subset(data, Amount > 10000)


# e) Calculate average transaction amount
avg_transaction <- mean(data$Amount)

print(avg_transaction)


# f) Count number of transactions by type
table(data$TransactionType)


#Q4) Creating patient dataset

patients_data <- data.frame(
  PatientID = 1:10,
  
  Name = c("Rahul", "Sneha", "Amit", "Priya", "Karan",
           "Neha", "Rohit", "Pooja", "Arjun", "Simran"),
  
  Age = c(25, 62, 40, 55, 30,
          70, 48, 19, 65, 52),
  
  BloodPressure = c(120, 150, 135, 145, 128,
                    160, 138, 110, 155, 142),
  
  Temperature = c(36.5, 38.2, 37.0, 39.1, 36.8,
                  38.5, 37.4, 36.2, 39.0, 37.8)
)

# Saving dataset as CSV
write.csv(patients_data, "patients.csv", row.names = FALSE)


# Reading dataset
data <- read.csv("patients.csv")


# a) Display first 10 records
head(data, 10)


# b) Find patients with high blood pressure (>140)
subset(data, BloodPressure > 140)


# c) Detect patients with fever (>37°C)
subset(data, Temperature > 37)


# d) Calculate average patient age
avg_age <- mean(data$Age)

print(avg_age)


# e) Find maximum and minimum blood pressure
max(data$BloodPressure)

min(data$BloodPressure)


# f) Count number of patients above 60 years
sum(data$Age > 60)





#Q5) Creating student dataset

students_data <- data.frame(
  StudentID = 1:10,
  
  Name = c("Rahul", "Sneha", "Amit", "Priya", "Karan",
           "Neha", "Rohit", "Pooja", "Arjun", "Simran"),
  
  Subject = c("Maths", "Science", "English", "Maths", "Science",
              "English", "Maths", "Science", "English", "Maths"),
  
  Marks = c(85, 72, 91, 38, 67,
            45, 95, 81, 29, 76)
)

# Saving dataset as CSV
write.csv(students_data, "students.csv", row.names = FALSE)


# Reading dataset
data <- read.csv("students.csv")


# a) Display first 10 records
head(data, 10)


# b) Find students who scored above 80
subset(data, Marks > 80)


# c) Calculate average marks by subject
aggregate(Marks ~ Subject, data, mean)


# d) Find top scoring student
top_student <- data[which.max(data$Marks), ]

print(top_student)


# e) Find students who failed (Marks < 40)
subset(data, Marks < 40)


# f) Count number of students in each subject
table(data$Subject)




#Q6) Creating social media dataset

posts_data <- data.frame(
  PostID = 1:10,
  
  Platform = c("Instagram", "Facebook", "Twitter", "Instagram",
               "Facebook", "Twitter", "Instagram", "Facebook",
               "Twitter", "Instagram"),
  
  Likes = c(250, 120, 80, 500, 300,
            150, 450, 200, 60, 700),
  
  Comments = c(40, 25, 10, 70, 35,
               20, 60, 28, 8, 90),
  
  Shares = c(30, 15, 5, 90, 40,
             12, 80, 22, 4, 120)
)

# Creating engagement column
posts_data$Engagement <- posts_data$Likes +
  posts_data$Comments +
  posts_data$Shares

# Saving dataset as CSV
write.csv(posts_data, "posts.csv", row.names = FALSE)


# Reading dataset
data <- read.csv("posts.csv")


# a) Display first 10 records
head(data, 10)


# b) Calculate total engagement per post
data[, c("PostID", "Engagement")]


# c) Find posts with engagement greater than 500
subset(data, Engagement > 500)


# d) Find most liked post
most_liked <- data[which.max(data$Likes), ]

print(most_liked)


# e) Calculate average engagement
avg_engagement <- mean(data$Engagement)

print(avg_engagement)


# f) Find posts with low engagement (<100)
subset(data, Engagement < 100)