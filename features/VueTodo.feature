@VueTodo
Feature: VueTodo

@OpenMytodosWebpage
Scenario: Open My todos Webpage
Given the browser open My Todos web
Then web has Header page "My to-dos", textbox Create a new todo dengan placeholder "Create a New Todo...", grid data which showing Todo Name, edit icon and delete icon

@AddTodo
Scenario: Add Todo
Given the browser open My Todos web
Then the user click textbox Create a new todo
Then the user input todo
Then the user press enter
Then the data should appear

@AddTodoNonUnique
Scenario: Add Todo  Non Unique
Given the user click textbox Create a new todo on the web My todos
Then the user input todo
Then the user press enter
Then the error message should appear

@EditTodo
Scenario: Edit Todo
Given the user has added Todo Create testing Automation
Then the user click edit icon on the todo
Then the user edit the todo data
Then the user press enter
Then the data should appear

@EditTodoNonUnique
Scenario: Edit Todo  Non Unique
Given the web My Todo has "Do the Dishes" data and the user has click edit icon on "Create testing Automation Edit" data
Then the user edit the todo data
Then the user press enter
Then the error message should appear

@DeleteTodo
Scenario: Delete Todo
Given the web My Todo has "Create testing Automation" data
Then the user click delete icon on the data
Then the data should not on the list

@MarkingaCompletedTodo
Scenario: Marking a Completed Todo
Given the web My Todo has "Do the dishes" data
Then the user click the Todo on the grid
Then the data should on the Strikethrough mark