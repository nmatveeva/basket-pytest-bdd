Feature: Product Basket
  As a customer,
  I want to carry products in a basket.


  Scenario Outline: Add products to a basket
    Given the basket has "<init>" product(s)
    When "<some>" product(s) added to the basket
    Then the basket contains "<total>" product(s)

    Examples: Amounts
    | init | some | total |
    | 1    | 2    | 3     |
    | 4    | -3   | 1     |
    | 5    | 0    | 5     |


  Scenario: Remove products from a basket
    Given the basket has "10" product(s)
    When "5" product(s) removed from the basket
    Then the basket contains "5" product(s)
