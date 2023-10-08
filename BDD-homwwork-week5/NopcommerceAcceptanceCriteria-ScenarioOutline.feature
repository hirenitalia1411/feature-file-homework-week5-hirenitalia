Feature: Books category

  Background: I should be able to see homepage
    Given I enter URL https://demo.nopcommerce.com/ in the browser
    And Press Enter button
    Then User is navigate to home page

  Scenario Outline: I should be able to see top menu tabs on homepage with categories
    When I am on home page
    Then I should be able to see top menu tabs with "<categories>"

    Examples:
      | categories        |
      | Computer          |
      | Electronic        |
      | Apparel           |
      | Digital downloads |
      | Books             |
      | Jewellery         |
      | Gift card         |

  Scenario Outline: I should be able to see book page with filters
    When I select book category from top menu tabs on home page
    Then I should be navigate to books category
    And I should be able to see "<filters>"

    Examples:
      | filters  |
      | Short by |
      | Display  |
      | Grid Tab |
      | List Tab |

  Scenario Outline: I should be able to see list of terms of the filter
    Given I am on books page
    When I click on "<filter>"
    Then I should be able to see "<list>" in dropdown menu

    Examples:
      | filter  | list                                                                           |
      | Sort by | Name: A to Z, Name: Z to A, Price: High to Low, Price: Low to High, Created on |
      | Display | 3, 6, 9                                                                        |

  Scenario Outline: I should be able to choose any filter option with specific result
    Given I am on books page
    When I click on "<filter>"
    And I click on "<option>"
    Then I should be able to choose any filter option from the list
    And I should be able to see "<result>"

    Examples:
      | filter  | option            | result                                                             |
      | Sort by | Name: A to Z      | Sorted products with the product name in alphabetical order A to Z |
      | Sort by | Name: Z to A      | Sorted products with the product name in alphabetical order Z to A |
      | Sort by | Name: High to Low | Sorted products with with the price in ascending order             |
      | Sort by | Name: Low to High | Sorted products with with the price in descending order            |
      | Sort by | Created on        | Recently added product should be show first                        |
      | Display | 3                 | display 3 products in a page                                       |
      | Display | 6                 | display 6 products in a page                                       |
      | Display | 9                 | display 9 products in a page                                       |

  Scenario Outline: I should be able to see product display format according format type as per given picture in SRS document
    Given I am on books page
    When I click on "<display format icon>"
    Then I should be able to see product display format according display format type as per the given picture in SRS document

    Examples:
      | display format icon |
      | Grid                |
      | List                |