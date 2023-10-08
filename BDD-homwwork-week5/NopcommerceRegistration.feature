Feature: Nopcommerce Registration
  As a user, I want to check the Registration functionality of Nopcommerce

  Background: I am on Nopcommerce Registration page
    Given I open the Google Chrome Browser
    When I open the URL https://demo.nopcommerce.com/register
    Then I am on Nopcommerce Registration page

  Scenario Outline: I should not be able to register with invalid data on mandatory field (*) of registration page
    When I enter first name "<First Name>"
    And I enter last name "<Last Name>"
    And I enter email address "<Email Address>"
    And I enter Password "<Password>"
    And I enter Confirm Password "<Confirm Password>"
    And Click on Registration button
    Then I can see an error message "<Error Message>"
    And I am not able to Register

    Examples:
      | First Name | Last Name | Email Address    | Password | Confirm Password | Error Message                              |
      | ""         | Bakshi    | bakshi@gmail.com | 456789   | 456789           | Please enter First Name                    |
      | Rohan      | ""        | bakshi@gmail.com | 456789   | 456789           | Please enter Last Name                     |
      | Rohan      | Bakshi    | ""               | 456789   | 456789           | Please enter Email Address                 |
      | Rohan      | Bakshi    | bakshi@gmail.com | ""       | 456789           | Password is required                       |
      | Rohan      | Bakshi    | bakshi@gmail.com | 456789   | ""               | Confirm Password is required               |
      | ""         | ""        | ""               | ""       | ""               | Mandatory (*) fields are required          |
      | Rohan      | Bakshi    | bakshi@gmail.com | 45678    | ""               | Minimum 6 character password is required   |
      | Rohan      | Bakshi    | bakshi@gmail.com | 456789   | 456798           | Password and Confirm Password do not match |

  Scenario: I should be able to select any radio button from Gender label of Your Personal Details section
    Given I am on Gender label of Your Personal Details section
    When I select "Male" radio button
    And I select "Female" radio button
    Then I am able to select any one of the radio button

  Scenario: I should be able to check and uncheck the Newsletter box on options section
    Given I am on Newsletter label on options section
    When I click on Newsletter checkbox
    And I again click on Newsletter checkbox
    Then I was able to check and uncheck the box next to Newsletter label

  Scenario Outline: I should be able to select Day, Month and Year from dropdown list of Date of Birth field
    Given I am on Date of birth field of Your Personal Details section
    When I select day "<Day>"
    And I select month "<Month>"
    And I select year "<Year>"
    Then I am able to select Day, Month and Year from dropdown list

    Examples:
      | Day | Month    | Year |
      | 11  | November | 1989 |

  Scenario: I should be able to register with valid mandatory field data on registration page
    When I enter First Name "Rohan"
    And I enter Last Name "Bakshi"
    And I enter email address "bakshi@gmail.com"
    And I enter Password "456789"
    And I enter Correct Password "456789"
    And I click on Registration button
    Then I was able to register successfully

