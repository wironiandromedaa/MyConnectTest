*** Settings ***
Library    SeleniumLibrary
Resource    ../resources/general.robot
Resource    ../resources/main_page.robot


*** Test Cases ***
Landing Page Loads Successfully
    [Documentation]    Verify homepage loads and "Request a Demo" button navigates to request demo page
    Given MyConnect.ai Web is open
    When I click button Request Demo
    Then I should be landed to ${REQUEST_DEMO}

Verify Our Solutions Heading Exists
    [Documentation]    Verify "Our Solutions" section is visible on homepage
    Given MyConnect.ai Web is open
    When I click menu Our Solutions
    Then I should be able to see section Our Solutions

Verify Who We Are Heading Exists
    [Documentation]    Verify "Who We Are" section is visible on homepage
    Given MyConnect.ai Web is open
    When I click menu Who We Are
    Then I should be able to see section Meet Our Founder

Verify FAQ Heading Exists
    [Documentation]    Verify "FAQ" section is visible on homepage
    Given MyConnect.ai Web is open
    When I click menu FAQ
    Then I should be able to see section Frequently Asked Questions

Verify Contact Us Heading Exists
    [Documentation]    Verify "Contact Us" section is visible on homepage
    Given MyConnect.ai Web is open
    When I click menu Contact Us
    Then I should be able to see section Contact Us


