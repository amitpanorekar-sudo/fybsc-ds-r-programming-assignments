#Q1) Creating customer dataset

customer_data <- data.frame(
  Name = c("Rahul", "Sneha", "Amit"),
  Age = c(25, 32, 28),
  Income = c(45000, 62000, 51000),
  Membership = c("Gold", "Silver", "Platinum")
)

print(customer_data)


# Creating S3 object using first row

customer1 <- list(
  Name = customer_data$Name[1],
  Age = customer_data$Age[1],
  Income = customer_data$Income[1],
  Membership = customer_data$Membership[1]
)

class(customer1) <- "Customer"


# Creating custom print method

print.Customer <- function(x)
{
  cat("Customer Name :", x$Name, "\n")
  cat("Age :", x$Age, "\n")
  cat("Income :", x$Income, "\n")
  cat("Membership :", x$Membership, "\n")
}


# Printing object

print(customer1)


# Accessing object values

customer1$Income
customer1$Membership


# Modifying one attribute

customer1$Income <- 50000

print(customer1)


#Q2)# Creating customer dataset

customer_data <- data.frame(
  Name = c("Rahul", "Sneha", "Amit"),
  Age = c(25, 32, 28),
  Income = c(45000, 62000, 51000),
  Membership = c("Gold", "Silver", "Platinum")
)

print(customer_data)


# Creating S4 class

setClass(
  "Customer",
  
  slots = list(
    Age = "numeric",
    Income = "numeric",
    Membership = "character"
  )
)


# Creating object using dataset values

customer1 <- new(
  "Customer",
  Age = customer_data$Age[1],
  Income = customer_data$Income[1],
  Membership = customer_data$Membership[1]
)


# Creating show method

setMethod(
  "show",
  "Customer",
  
  function(object)
  {
    cat("Age :", object@Age, "\n")
    cat("Income :", object@Income, "\n")
    cat("Membership :", object@Membership, "\n")
  }
)


# Displaying object

customer1


# Accessing slots

customer1@Age
customer1@Income
customer1@Membership



#Q3)# Creating dataset

customer_data <- data.frame(
  Name = c("Rahul", "Sneha", "Amit"),
  Age = c(25, 32, 28),
  Income = c(45000, 62000, 51000)
)

print(customer_data)


# Assigning dataset to another variable

copy_data <- customer_data


# Modifying copied dataset

copy_data$Income[1] <- 70000


# Displaying copied dataset

print(copy_data)


# Checking original dataset

print(customer_data)


# Comparing both datasets

identical(customer_data, copy_data)





#Q4)# Creating dataset

customer_data <- data.frame(
  ID = 1:1000,
  Age = sample(20:60, 1000, replace = TRUE),
  Income = sample(30000:100000, 1000, replace = TRUE)
)

print(head(customer_data))


# Creating large object

large_object <- customer_data


# Checking memory usage

object.size(large_object)


# Creating extra object

temp_data <- large_object


# Removing unnecessary object

rm(temp_data)


# Running garbage collection

gc()





#Q5)# Creating customer dataset

customer_data <- data.frame(
  Name = c("Rahul", "Sneha", "Amit"),
  Age = c(25, 32, 28),
  Income = c(45000, 62000, 51000)
)

print(customer_data)


# Converting dataset into list

customer_list <- list(
  list(Name = "Rahul", Age = 25, Income = 45000),
  list(Name = "Sneha", Age = 32, Income = 62000),
  list(Name = "Amit", Age = 28, Income = 51000)
)


# Assigning S3 class

class(customer_list[[1]]) <- "Customer"
class(customer_list[[2]]) <- "Customer"
class(customer_list[[3]]) <- "Customer"


# Accessing nested values

customer_list[[1]]$Name
customer_list[[2]]$Income


# Modifying customer data

customer_list[[3]]$Income <- 55000


# Printing structure

str(customer_list)




#Q6) Creating dataset

customer_data <- data.frame(
  Name = c("Rahul", "Sneha", "Amit", "Priya"),
  Age = c(25, 32, 28, 30),
  Income = c(45000, 62000, 51000, 58000),
  Membership = c("Gold", "Silver", "Gold", "Platinum")
)

print(customer_data)


# Checking class of dataset

class(customer_data)


# Inspecting structure

str(customer_data)


# Extracting attributes

attributes(customer_data)


# Generating summary

summary(customer_data)




#Q7) Creating dataset

customer_data <- data.frame(
  SpendingScore = c(75, 60, 82),
  Income = c(45000, 62000, 51000)
)

print(customer_data)


# Creating S4 class

setClass(
  "SpendingProfile",
  
  slots = list(
    SpendingScore = "numeric",
    Income = "numeric"
  )
)


# Creating object

profile1 <- new(
  "SpendingProfile",
  SpendingScore = customer_data$SpendingScore[1],
  Income = customer_data$Income[1]
)


# Accessing slot values

profile1@SpendingScore
profile1@Income


# Modifying slot values

profile1@Income <- 50000

profile1@SpendingScore <- 80


# Displaying updated object

profile1




#Q8) Creating dataset

customer_data <- data.frame(
  Name = c("Rahul", "Sneha", "Amit"),
  Age = c(25, 32, 28),
  Income = c(45000, 62000, 51000)
)

print(customer_data)


# Creating summary of dataset

data_summary <- summary(customer_data)


# Creating nested list

company_data <- list(
  Dataset = customer_data,
  Summary = data_summary
)


# Accessing inner elements

company_data$Dataset

company_data$Summary


# Modifying nested structure

company_data$Dataset$Income[1] <- 50000


# Applying class to nested object

class(company_data) <- "CompanyData"


# Displaying structure

str(company_data)




#Q9) Creating dataset

customer_data <- data.frame(
  Name = c("Rahul", "Sneha", "Amit"),
  Age = c(25, 32, 28),
  Income = c(45000, 62000, 51000)
)

print(customer_data)


# Converting dataset into S3 object

customer_object <- customer_data

class(customer_object) <- "CustomerData"


# Creating function for average income

average_income <- function(x)
{
  mean(x$Income)
}


# Applying function on object

average_income(customer_object)


# Extending object with new attribute

customer_object$Membership <- c("Gold", "Silver", "Platinum")


# Displaying updated object

print(customer_object)


# Validating object consistency

class(customer_object)

str(customer_object)




#Q10) Creating dataset

customer_data <- data.frame(
  Name = c("Rahul", "Sneha", "Amit"),
  Age = c(25, 32, 28),
  Income = c(45000, 62000, 51000)
)

print(customer_data)


# Creating S3 object

s3_customer <- customer_data

class(s3_customer) <- "CustomerS3"


# Creating S4 class

setClass(
  "CustomerS4",
  
  slots = list(
    Name = "character",
    Age = "numeric",
    Income = "numeric"
  )
)


# Creating S4 object

s4_customer <- new(
  "CustomerS4",
  Name = customer_data$Name[1],
  Age = customer_data$Age[1],
  Income = customer_data$Income[1]
)


# Function for summary statistics

customer_summary <- function(x)
{
  summary(x)
}


# Applying function on S3 object

customer_summary(s3_customer)


# Displaying S4 object

s4_customer


# Comparing systems

print("S3 system is flexible and easy to modify")

print("S4 system is strict and validates data types")


# Checking class types

class(s3_customer)

class(s4_customer)