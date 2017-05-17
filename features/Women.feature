Feature: To check the functionality of women tab
		In order to check the functionlity of women tab 
		As a webste user
		I need to click on women tab 
		And I should be landed to new page

@1
Scenario: When I click on Women i should be navigated to a new page
Given I am on "/index.php"
When I click "Women"
Then I should be on "http://automationpractice.com/index.php?id_category=3&controller=category"
And print current URL

@2
Scenario: I should see the elements visbile on left panel
Given I am on "/index.php?id_category=3&controller=category"
#Then I should see "Return to Home"
#And I should see text matching "Women"
And I should see text matching "Tops"
And I should see text matching "Dresses"
And I should see text matching "Catalog"
And I should see text matching "Categories"
And I should see text matching "Size"
And I should see text matching "S"
And I should see text matching "M"
And I should see text matching "L"
And I should see text matching "Color"
And I should see text matching "Beige"
And I should see text matching "White"
And I should see text matching "Black"
And I should see text matching "Orange"
And I should see text matching "Compositions"
And I should see text matching "Cotton"
And I should see text matching "Polyester"
And I should see text matching "Viscose"
And I should see text matching "Styles"
And I should see text matching "Casual"
And I should see text matching "Dressy"
And I should see text matching "Girly"
And I should see text matching "Properties"
And I should see text matching "Colorful Dress"
And I should see text matching "Availability"
And I should see text matching "Manufacturer"
And I should see text matching "Condition"
And I should see text matching "Price"
And I should see text matching "Information"
And I should see text matching "Delivery"
And I should see text matching "Legal Notice"
And I should see text matching "Specials"
And I should see text matching "Our stores"
And I should see text matching "Viewed products"

@3
Scenario: To check the page changes on clicking Tops
Given I am on "/index.php"
Then I click "Tops"
Then I should be on "/index.php?id_category=4&controller=category"
