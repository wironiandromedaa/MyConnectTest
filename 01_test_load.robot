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



