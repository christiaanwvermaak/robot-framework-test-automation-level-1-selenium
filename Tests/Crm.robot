*** Settings ***
Documentation       This is some simple documentation for the whole Crm suite of tests.
Library             SeleniumLibrary

#Run command:
#uv run robot -d Results Tests/Crm.robot
*** Variables ***


*** Test Cases ***
Should be able to add new customer
    [Documentation]             This test case adds a new customer to the CRM application.
    [Tags]                      1006     Smoke       Contacts
    #Initialize Selenium
    Set Selenium Speed          .2s
    Set Selenium Timeout        15s

    # Open the CRM application in the browser
    Log                         Starting test case to add new customer
    Open Browser                https://automationplayground.com/crm/    Safari

    Maximize Browser Window
    # Resize browser window to specific dimensions
    #Set Window Size             width=1935    height=1090
    #Set Window Position         x=341    y=169


    #Click Link                  css=.nav-link
    #Click Link                  xpath=//a[@class="nav-link"]
    #Click Link                  sign-in-link --> using name
    #Click Link                  id=SignIn
    Click Link                  Sign In
    Sleep                       1s
    Page Should Contain         Login

    Input Text                  email-id            admin@robotframeworktutorial.com
    Input Password              password            admin123!
    Click Button                submit-id
    Sleep                       1s
    Page Should Contain         Our Happy Customers

    #Click Link                  New Customer
    Click Link                  css=.btn.btn-default.btn-primary
    Sleep                       1s
    Page Should Contain         Add Customer
    
    Input Text                  EmailAddress        test@somewhere.com
    Input Text                  FirstName           Tester
    Input Text                  LastName            McTesterson
    Input Text                  City                Johannesburg
    Select From List By Label   StateOrRegion       California
    Select Radio Button         gender              male
    Select Checkbox             promos-name
        
    Sleep               3s
    Close Browser

*** Keywords ***
