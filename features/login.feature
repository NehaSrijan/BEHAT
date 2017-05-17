Feature: To check the successful login
In order to check the the status of login 
I will login as valid user  
And I should be landed on the home page

@1
Scenario: To check the successful login
Given I am on "/index.php"
#When I click "Sign in"
Then I am on "index.php?controller=authentication&back=my-account"

@2
Scenario: To check the successful login
Given I am on "index.php?controller=authentication&back=my-account"
When I fill in "Email address" with "neha.singh@srijan.net"
And I fill in "Password" with "srijan123@"
And I press "Sign in"
Then I should be on "index.php?controller=my-account"

@javascript @3
Scenario: To check the unsuccessful login and take a screenshot
Given I am on "index.php?controller=authentication&back=my-account"
When I fill in "Email address" with "neha.singh@srijan.net"
And I fill in "Password" with "srijan123"
And I press "Sign in"
Then I should be on "index.php?controller=authentication"
