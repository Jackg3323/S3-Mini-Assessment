Feature:filters

Product table allows the user to filter the products based on name or if they are in stock 

    Rule: out of stock products can be hidden

        Scenario: if a checkbox is ticked
            Given there is out of stock products
            When the checkbox is ticked
            Then out of stock products are hidden
    
    Rule: it can fillter items 

        Scenario: a product in stock is entered into the search field
            Given that the product is present in the table
            When a product is entered into the search field 
            Then the product searched for is displayed

        Scenario: a product not in the table is not be found
            Given that a product is not in the table 
            When the product is entered into the search field 
            Then nothing is displayed
            
