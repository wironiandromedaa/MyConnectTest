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
    [Teardown]    Close Browser

I click menu Who We Are
    Click Element    xpath=//nav//a[@href='/who-we-are/']/p[text()='Who We Are']

I should be able to see section Meet Our Founder
    Wait Until Page Contains Element    xpath=//h1[contains(text(), 'Meet Our Founder')]
    [Teardown]    Close Browser

I click menu FAQ
    Click Element    xpath=//nav//a[@href='/#faq']/p[text()='FAQ']

I should be able to see section Frequently Asked Questions
    Wait Until Page Contains Element    xpath=//h3[contains(text(), 'Frequently Asked Questions')]
    [Teardown]    Close Browser

I click menu Contact Us
    Click Element    xpath=//nav//a[@href='/contact-us/']/p[text()='Contact Us']

I should be able to see section Contact Us
    Wait Until Page Contains Element    xpath=//h3[contains(text(), 'We’d love to hear')]
    [Teardown]    Close Browser
