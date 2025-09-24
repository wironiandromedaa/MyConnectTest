*** Keywords ***
MyConnect.ai Web is open
    Open Browser    ${BASE_URL}    chrome
    Maximize Browser Window
    Wait Until Page Contains Element    xpath=//button[normalize-space()='Request a Demo']    10s

I click button Request Demo
    Click Element    xpath=//a[@href='/request-a-demo/']/button[normalize-space()='Request a Demo']

I should be landed to ${REQUEST_DEMO}
    Wait Until Page Contains Element    xpath=//span[contains(., "Want to find out how MyConnect.ai can help your")] 
    [Teardown]    Close Browser

I click menu What We Do 
    Click Element   xpath=//nav//a[@href='/']/p[text()='What We Do']

I click menu Our Solutions
    Click Element    xpath=//nav//a[@href='/#our-solutions']/p[text()='Our Solutions']

I should be able to see section Our Solutions
    Wait Until Page Contains Element    xpath=//h3[contains(text(), 'Our Solutions')]


