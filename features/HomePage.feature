Feature: To view the elements on homepage 
In order to view the elements on homepage
As a website user 
I need to be able to see all the webelements visible on homepage

@1
Scenario: To check the URL landing on home page
Given I am on "/index.php" 
Then I should see text matching "My Store"

@2
Scenario: To check the elements listed on header
Given I am on "/index.php"
And I should see text matching "0123-456-789"
And I should see text matching "Contact us"
And I should see text matching "Sign in" 

@3
Scenario: To check the elemnets listed on body on home page
Given I am on "/index.php"
Then I should see text matching "Search"
And I should see text matching "Cart"
And I should see text matching "Women"
And I should see text matching "Dresses"
And I should see text matching "T-shirts"
And I should see text matching "Popular"
And I should see text matching "Sellers"
And I should see text matching "Follow us on Facebook"
#And I should see "Sign Up"
#And I should see text matching "Be the first of your friends to like this"
And I should see text matching "Come Visit Us"
And I should see text matching "We are located in Research Triangle Park, North Carolina, USA"
And I should see text matching "Call Us"
And I should see text matching "Selenium Framework"
And I should see text matching "How to Pay dues"
And I should see text matching "You can pay us by calling or use our online pay channels"
And I should see text matching "Custom Block"
And I should see text matching "This is a custom block of text"
And I should see text matching "Selenium Framework website was designed solely to help folks get over"

@4
Scenario: To check the elements listed on footer
Given I am on "/index.php"
Then I should see text matching "Newsletter"
And I should see text matching "Enter your e-mail"
And I should see text matching "Follow us"
And I should see text matching "Categories"
And I should see text matching "Information"
And I should see text matching "My account"
And I should see text matching "Women"
And I should see text matching "Specials"
And I should see text matching "New products"
And I should see text matching "Best sellers`"
And I should see text matching "Our stores"
And I should see text matching "Contact us"
And I should see text matching "Terms and conditions of use"
And I should see text matching "My orders"
And I should see text matching "My credit slips"
And I should see text matching "My addresses"
And I should see text matching "My personal info"
And I should see text matching "Store information"
And I should see text matching "Follow us"
And I should see text matching "Facebook"
And I should see text matching "Twitter"
And I should see text matching "Youtube"
And I should see text matching "Google Plus"
And I should see text matching "Selenium Framework, Research Triangle Park,"
#And I should see text matching "(347) 466-7432"
And I should see text matching "support@seleniumframework.com"
And I should see text matching "Ecommerce software by PrestaShop"



@javascript @6
Scenario: locating element via xpath
Given I am on "/index.php"
And I click on the element with xpath "//div[@id='block_top_menu']"
Then I wait for 10 seconds  
Then I should see text matching "Women"
Then show me a screenshot


@javascript @7
Scenario: to check the hover on the element
Given I am on "/index.php"
When I hover over the element by Xpath "//a[contains(@title,'Women')]" 
Then I wait for 10 seconds
Then I should see text matching "TOPS"
And I should see text matching "T-shirts"


@javascript @8
Scenario: Visit home page
Given I am on "/index.php"
And I set browser window size to "1024" x "768"


