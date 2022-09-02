Feature: Convert Temprature 

    If a number is entered it will convert it to the opposite temprature

    Rule: the site starts with 0 in both fields
        Scenario: site has just been opened
            Given that the site is open
            When the site loads 
            Then the Celsius and Fahrenheit field both contain 0

    Rule: the site converts tempratures
        Scenario:Convert between Celsius and Fahrenheit
            Given I have a temperature of 100° Celsius
            When I convert it to degrees Fahrenheit
            Then I see 212° Fahrenheit

        Scenario: Convert between Fahrenheit and Celsius
            Given I have a temperature of 50° Fahrenheit
            When I convert it to degrees Celsius
            Then I see 10° Celsius
    
    Rule: only numbers will be allowed to be typed in the field
        Scenario: A non-numercial character is entered into the Celsius field
            Given I entered a non-numercial character into the Celsius field
            When I type the character
            Then the character will not change 

        Scenario: A non-numercial character is entered into the Fahrenheit field
            Given I entered a non-numercial character into the Fahrenheit field
            When I type the character
            Then the character will not change
