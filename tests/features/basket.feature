Feature: Product Basket
  As a customer,
  I want to carry products in a basket.


  Scenario: Add products to a basket
    Given the basket has "3" product(s)
    When "1" product(s) added to the basket
    Then the basket contains "4" product(s)


  Scenario: Remove products from a basket
    Given the basket has "10" product(s)
    When "5" product(s) removed from the basket
    Then the basket contains "5" product(s)
