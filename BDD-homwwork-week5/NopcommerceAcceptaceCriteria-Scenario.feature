Feature:  Demo Nopcommerce's top menu acceptance criteria
  As a user, I would like to check acceptance criteria of Nopcommerce top menu

  Background: User is on given URL
    When User type URL https://demo.nopcommerce.com
    And User press Enter button
    Then User is on the nopcommerce homepage

  Scenario: Verify that user can b=navigate to Books category
    When User is on given URL
    And Click on Books tab on the top menu
    Then User is navigated to Books category page

  Scenario: Verify that user can see the Books category page with filters and list of products
    When User is on given URL
    And Click on Books tab on the top menu
    And Check Filters and List tab
    Then Books category page is displayed with Filters and List tabs

  Scenario: Verify that user can see 'Sort by' filter on Books Category page
    Given User is on Books category page
    When User is on Books category page
    And Check 'Sort by' filter is present
    Then User can see the 'Sort by' filter on the Books category page

  Scenario: Verify that user can see 'Display' filter on Books Category page
    Given User is on Books category page
    When User is on Books category page
    And Check 'Display' filter is present
    Then User can see the 'Display' filter on the Books category page

  Scenario: Verify that user can see 'Grid' tab on Books Category page
    Given User is on Books category page
    When User is on Books category page
    And Check 'Grid' tab is present
    Then User can see the 'Grid' tab on the Books category page

  Scenario: Verify that user can see 'List' tab on Books Category page
    Given User is on Books category page
    When User is on Books category page
    And Check 'List' tab is present
    Then User can see the 'List' tab on the Books category page

  Scenario: Verify that user can see 'Name: A to Z' selection is present in 'Sort by' filter
    Given User is on Books category page
    When User is on Books category page
    And Click on 'Sort by' filter
    And Check 'Name: A to Z' selection is present
    Then User can see the 'Name: A to Z' selection is present

  Scenario: Verify that user can see 'Name: A to Z' as the first option in 'Sort by' filter
    Given User is on Books category page
    When User is on Books category page
    And Click on 'Sort by' filter
    And Check 'Name: A to Z' as the first option in 'Sort by' filter
    Then User can see the 'Name: A to Z' as the first option in 'Sort by' filter

  Scenario: Verify that user can see 'Name: A to Z' is functioning as expected (Note: Products are filtered in Alphabetical order)
    Given User is on Books category page
    When User is on Books category page
    And Click on 'Sort by' filter
    And Select 'Name: A to Z' option
    Then User can see the products in Alphabetical order



