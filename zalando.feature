Feature: Search and purchase a product on www.zalando.com

  Scenario: Search for a product and add it to the cart
    Given I am on the www.zalando.com website
    When I search for "black leather shoes" in the search bar
    And I click on the first search result
    And I select my size "38"
    And I click on "Add to cart"
    Then I should see a notification message "Product added to cart"
    And the cart icon should show the correct number of items
    And the product in the cart should be "black leather shoes" with a size of "38"
    
  Scenario: Proceed to checkout and validate purchase
    Given I have added "black leather shoes" with a size of "38" to my cart
    When I click on the cart icon
    And I click on "Proceed to checkout"
    And I enter my personal details
    And I select a payment method
    And I click on "Place order"
    Then I should see a confirmation message "Your order has been placed"
    And I should receive an email confirmation of my purchase
    And the purchased product should appear in my order history
