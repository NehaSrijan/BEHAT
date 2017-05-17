Feature: To check the search option in body of homepage
		In order to check the search option in home page
		As a website user
		I need to enter the text in search bar 
		And I should see the search results

@1
Scenario: To check if the search option gives the results
Given I am on "/index.php"
When I fill in "Search" with "Dresses"
And I press the "submit_search" button 
#Then wait for the page to be loaded
And I should be on "/index.php?controller=search&orderby=position&orderway=desc&search_query=dresses&submit_search="
And I should see text matching "Search"
#And I should see "shoes"


