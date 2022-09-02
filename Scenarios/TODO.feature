Feature: TODO List

    This will store a list of TODO's

    Rule: You can add TODO to the list
        Scenario: A TODO is added to the list
            Given I have a TODO
            When the TODO is entered into the box
            And the Add button is clicked
            Then the TODO is added to the list
    
    Rule: The Add button will be unselectable until text has been entered into the box
        Scenario: there is no text has been entered
            Given there has been no text entered into the TODO box
            When I click the Add button
            Then nothing will be added to the list

    Rule: You can edit TODO's already on the list
        Scenario: I update a TODO on the list
            Given there is a TODO on the list I want to edit
            When I click on the edit button for that TODO
            And I change the text in the update box
            And I click the update button
            Then the TODO is updated
        
        Scenario: I change which TODO to change
            Given tShere are multiple TODO's on the list 
            When I click on the edit button of a TODO
            And I then click edit of another TODO 
            Then the first TODO is not changed


    Rule: You can delete TODO's from the list 
        Scenario: I delete a TODO of the list
            Given there is a TODO on the list
            When I click the delete button
            Then the TODO is deleted

    Rule: You can mark a TODO complete
        Scenario: I mark a TODO completed
            Given there is a TODO on the list
            When I click the checkbox of of the TODO 
            Then the checkbox will be ticked and the TODO crossed out

        Scenario: I uncomplete a TODO
            Given there is a completed TODO
            When I click the the checkbox of the TODO 
            Then the checkbox will be unticked and the TODO will not be crossed out