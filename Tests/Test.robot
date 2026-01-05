*** Settings ***
Documentation       This is some simple documentation for the whole Crm suite of tests.
Library             SeleniumLibrary


*** Variables ***



*** Test Cases ***
Open browser and navigate to CRM
    [Documentation]     This test case opens a browser and navigates to the CRM application.
    Open Browser        https://automationplayground.com/crm/    Chrome
    Maximize Browser Window
    Title Should Be     Customer Service
    Sleep               5s
    [Teardown]    Close Browser


*** Keywords ***