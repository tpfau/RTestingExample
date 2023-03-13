library(testthat);
context("Temperature function testing");
source("functions.R");

test_that(desc = "Fahrenheit to Celsius", code = {
  
  temp_C <- convert_fahrenheit_to_celsius(50); # Runs the function
  
  # Test that the result is the correct value
  expect_that( object = temp_C, condition = equals(10) );
  
  # Test that the result is numeric
  expect_that( object = is.numeric(temp_C), condition = equals(TRUE) );
})



test_that(desc = "Add", code = {  
  c <- add(2,3);   
  expect_that( object = c, condition = equals(5) );
  expect_that( object = is.numeric(c), condition = equals(TRUE) );
})



test_that(desc = "Subtract", code = { 
  c <- subtract(3,2); 
  expect_that( object = c, condition = equals(1) );
  expect_that( object = is.numeric(c), condition = equals(TRUE) );
})

test_that(desc = "Multiply", code = {
    C <- multiply(3,2); 
  expect_that( object = C, condition = equals(6) );
  expect_that( object = is.numeric(C), condition = equals(TRUE) );
})