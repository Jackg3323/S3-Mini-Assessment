Feature: Tic Tac Toe

    Allows the user to play Tic Tac Toe

    Rule: the site will load with just the grid visible
        Scenario: The site is open in a new tab
            Given that the site is open
            When when the page is loaded
            Then only the grid is visible

        Scenario: the page has been refreshed
            Given that the site is open
            When the page is refreshed
            Then only the grid is visible

    Rule: X go first
        Scenario: a new game is being started
            Given the site is open
            When I click on a empty space 
            Then a X will be visible in that space
        
    Rule: X and O will alternate turns 
        Scenario: a new game is being started
            Given the site is open
            When I click on a empty space
            And then another empty space 
            Then a X will be visible in first space
            And a O will be visible in the second space
        
        Scenario: A O tries to click on a X
            Given X has had a turns
            When O clicks on the X
            Then X will still be there

        Scenario: A X tries to click on a O
            Given X has had a turns
            When X clicks on the O
            Then O will still be there
        
    Rule: The game will be won by the player who gets either 3 X or O in a row
        Scenario: X wins on a vertical line
            Given a player has 3 X in a vertical line 
            When the last X is placed
            Then X will be declared the winner

        Scenario: X wins on a horizontal line
            Given a player has 3 X in a horizontal line 
            When the last X is placed
            Then X will be declared the winner

        Scenario: X wins on a diagonal line
            Given a player has 3 X in a diagonal line 
            When the last X is placed
            Then X will be declared the winner

        Scenario: O wins on a vertical line
            Given a player has 3 O in a vertical line 
            When the last O is placed
            Then O will be declared the winner

        Scenario: O wins on a horizontal line
            Given a player has 3 O in a horizontal line 
            When the last O is placed
            Then O will be declared the winner

        Scenario: O wins on a diagonal line
            Given a player has 3 O in a diagonal line 
            When the last O is placed
            Then O will be declared the winner

    Rule: If neither player gets 3 in a row then a tie will be called
        Scenario: The game is a draw
            Given that nither X or O get 3 in a row
            When the space is filled 
            Then a tie is called
            
                                   