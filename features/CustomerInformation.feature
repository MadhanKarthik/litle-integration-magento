Feature: CustomerInformation
  In order to see more information about my customers
  As an admin, 
    I want to be able to go to the Litle & Co tab on a customer
    And see enhanced auth response data

  @javascript
  Scenario: buy with visa affluent credit card
    Given I am logged in as "gdake@litle.com" with the password "password"
    When I have "affluentvisa" in my cart
      And I press "Proceed to Checkout"
      And I press "Continue"
      And I press the "3rd" continue button
      And I choose "CreditCard"
      And I select "Visa" from "Credit Card Type"
      And I fill in "Credit Card Number" with "4457010201000246"
      And I select "9" from "Expiration Date"
      And I select "12" from "creditcard_expiration_yr"
      And I fill in "Card Verification Number" with "123"
      And I press the "4th" continue button
      And I follow "Place Order"
    Then I should see "Thank you for your purchase"
      And I follow "Log Out"
    Given I am logged in as an administrator
    When I view "Customers" "Manage Customers"
      Then I should see "Manage Customers"
      And I click on the top row in Customers
        Then I should see "Personal Information"
      And I press "Litle & Co. Customer Insight"
    Then I should see "Affluent" in the column "Affluence"

  @javascript
  Scenario: buy with visa mass affluent credit card
    Given I am logged in as "gdake@litle.com" with the password "password"
    When I have "affluentvisa" in my cart
      And I press "Proceed to Checkout"
      And I press "Continue"
      And I press the "3rd" continue button
      And I choose "CreditCard"
      And I select "Visa" from "Credit Card Type"
      And I fill in "Credit Card Number" with "4457010202000245"
      And I select "11" from "Expiration Date"
      And I select "11" from "creditcard_expiration_yr"
      And I fill in "Card Verification Number" with "123"
      And I press the "4th" continue button
      And I press "Place Order"
    Then I should see "Thank you for your purchase"
      And I follow "Log Out"
    Given I am logged in as an administrator
    When I view "Customers" "Manage Customers"
      Then I should see "Manage Customers"
      And I click on the top row in Customers
        Then I should see "Personal Information"
      And I press "Litle & Co. Customer Insight"
    Then I should see "Mass Affluent" in the column "Affluence"

  @javascript
  Scenario: buy with prepaid card
    Given I am logged in as "gdake@litle.com" with the password "password"
    When I have "prepaidproduct" in my cart
      And I press "Proceed to Checkout"
      And I press "Continue"
      And I press the "3rd" continue button
      And I choose "CreditCard"
      And I select "Visa" from "Credit Card Type"
      And I fill in "Credit Card Number" with "4457010200000247"
      And I select "8" from "Expiration Date"
      And I select "12" from "creditcard_expiration_yr"
      And I fill in "Card Verification Number" with "123"
      And I press the "4th" continue button
      And I press "Place Order"
    Then I should see "Thank you for your purchase"
      And I follow "Log Out"
    Given I am logged in as an administrator
    When I view "Customers" "Manage Customers"
      Then I should see "Manage Customers"
      And I click on the top row in Customers
        Then I should see "Personal Information"
      And I press "Litle & Co. Customer Insight"
    Then I should see "Gift" in the column "Prepaid"
      And I should see "$20.00" in the column "Available Balance"
      And I should see "No" in the column "Reloadable"
      
  @javascript
  Scenario: buy with issuing country card
    Given I am logged in as "gdake@litle.com" with the password "password"
    When I have "affluentproduct" in my cart
      And I press "Proceed to Checkout"
      And I press "Continue"
      And I press the "3rd" continue button
      And I choose "CreditCard"
      And I select "Visa" from "Credit Card Type"
      And I fill in "Credit Card Number" with "4100204446270000"
      And I select "11" from "Expiration Date"
      And I select "12" from "creditcard_expiration_yr"
      And I fill in "Card Verification Number" with "123"
      And I press the "4th" continue button
      And I press "Place Order"
    Then I should see "Thank you for your purchase"
      And I follow "Log Out"
    Given I am logged in as an administrator
    When I view "Customers" "Manage Customers"
      Then I should see "Manage Customers"
      And I click on the top row in Customers
        Then I should see "Personal Information"
      And I press "Litle & Co. Customer Insight"
    Then I should see "BRA" in the column "Issuing Country"
