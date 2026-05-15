
  
  # Step 1 : Create Artificial Dataset
  
  df <- data.frame(
    gender = c("male", "female", "male", "female", "male", "female"),
    purchase = c("yes", "no", "yes", "yes", "no", "yes"),
    amount = c(5000, 7000, 8000, 6000, 4000, 9000)
  )
  
  # Display Dataset
  df
  
  
  # Step 2 : Calculate Mean of Amount
  
  mean(df$amount)
  
  
  # Step 3 : Calculate Median of Amount
  
  median(df$amount)
  
  
  # Step 4 : Create Frequency Table for Gender
  
  table(df$gender)
  
  
  # Step 5 : Create Cross Table for Gender and Purchase
  
  table(df$gender, df$purchase)
  
  
  # Step 6 : Find Total Purchase Amount by Gender
  
  aggregate(amount ~ gender, data = df, FUN = sum)
  
  
  # Step 7 : Count Number of "yes" Purchases
  
  sum(df$purchase == "yes")
  