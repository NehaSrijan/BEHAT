<?php
use Drupal\DrupalExtension\Context\RawDrupalContext;
use Drupal\DrupalExtension\Context\MinkContext;
use Behat\Behat\Context\Context;
use Behat\Behat\Context\SnippetAcceptingContext;
use Behat\Gherkin\Node\PyStringNode;
use Behat\Gherkin\Node\TableNode;
use Behat\Behat\Tester\Exception\PendingException;
/**
 * Defines application features from the specific context.
 */
class FeatureContext extends RawDrupalContext implements SnippetAcceptingContext {
var $originalWindowName = '';
  /**
   * Initializes context.
   *
   * Every scenario gets its own context instance.
   * You can also pass arbitrary arguments to the
   * context constructor through behat.yml.
   */
  public function __construct() {
  }

  /**
     * Click on the element with the provided xpath query
     *
     * @When /^I click on the element with xpath "([^"]*)"$/
     */
    public function iClickOnTheElementWithXPath($xpath)
    {
        $session = $this->getSession(); // get the mink session
        $element = $session->getPage()->find('xpath',$session->getSelectorsHandler()->selectorToXpath('xpath', $xpath)
        ); // runs the actual query and returns the element
 
        // errors must not pass silently
        if (null === $element) {
            throw new \InvalidArgumentException(sprintf('Could not evaluate XPath: "%s"', $xpath));
        }
        
        // ok, let's click on it
        $element->click();
 
}
 /**
    * @When /^I hover over the element by Xpath "([^"]*)"$/
    **/
    public function iHoverOverTheElementbyXpath($xpath){
      $session = $this->getSession(); // get the mink session
      $element = $session->getPage()->find('xpath',$session->getSelectorsHandler()->selectorToXpath('xpath', $xpath)); // runs the actual query and returns the element
      // errors must not pass silently
      if  (null === $element) {
      throw new \InvalidArgumentException(sprintf('Could not evaluate XPath: "%s"', $xpath));
      }
      // ok, let's hover it
      $element->mouseOver();
    }

    // /**
    //  * Click on the element with the provided CSS Selector
    //  *
    //  * @When /^I click on the element with css selector "([^"]*)"$/
    //  */
    // public function iClickOnTheElementWithCSSSelector($cssSelector)
    // {
    //     $session = $this->getSession();
    //     $element = $session->getPage()->find(
    //         'xpath',
    //         $session->getSelectorsHandler()->selectorToXpath('css', $cssSelector) // just changed xpath to css
    //     );
    //     if (null === $element) {
    //         throw new \InvalidArgumentException(sprintf('Could not evaluate CSS Selector: "%s"', $cssSelector));
    //     }
 
    //     $element->click();
 
    // }

    /** this works with selenium/javascript tags
   * @When /^I hover over the element "([^"]*)"$/
   */
  public function iHoverOverTheElement($locator) {
    $session = $this->getSession(); // get the mink session
    $element = $session->getPage()
      ->find('xpath', $locator); // runs the actual query and returns the element
    // errors must not pass silently
    if (NULL === $element) {
      throw new \InvalidArgumentException(sprintf('Could not evaluate xpath selector: "%s"', $locator));
    }
    // ok, let's hover it
    $element->mouseOver();
  }


  /**
    * @Given /^I set browser window size to "([^"]*)" x "([^"]*)"$/
    */
    public function iSetBrowserWindowSizeToX($width, $height) {
      $this->getSession()->resizeWindow((int)$width, (int)$height, 'current');
    }

/**
 * This works for Selenium and other real browsers that support screenshots.
 *
 * @Then /^show me a screenshot$/
 */
public function show_me_a_screenshot() {

    $image_data = $this->getSession()->getDriver()->getScreenshot();
    $file_and_path = 'D:\Behat\Screenshot\behat_screenshot.jpg';
    file_put_contents($file_and_path, $image_data);

    if (PHP_OS === "Darwin" && PHP_SAPI === "cli") {
        exec('open -a "Preview.app" ' . $file_and_path);
    }

}

/**                                     
 * @Then I wait for :time seconds      
 */                                    
public function iWaitForSeconds($time) 
{                                      
    sleep($time);      
}                                      

    

    }
