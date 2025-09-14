*** Settings ***
Resource            ../resources/BasePage.resource
Resource            ../resources/LoginPage.resource
Resource            ../resources/ManagerPage.resource
Resource            ../variables/global_variables.robot

Test Setup          Open Browser To Login Page
Test Teardown       Close Browser Session


*** Test Cases ***
TC_MGR_001 Verify Manager Login
    [Tags]    manager    smoke
    Click Manager Login
    Wait Until Page Should Contain Element    ${ADD_CUSTOMER_BTN}

TC_MGR_002 Verify Add New Customer
    [Tags]    manager    regression
    Click Manager Login
    Add New Customer    ${NEW_CUSTOMER_FNAME}    ${NEW_CUSTOMER_LNAME}    ${NEW_CUSTOMER_POSTCODE}

TC_MGR_003 Verify Open New Account
    [Tags]    manager    regression
    Click Manager Login
    Open New Account For Customer    ${CUSTOMER_NAME}    ${ACCOUNT_CURRENCY}

TC_MGR_004 Verify Search Customer
    [Tags]    manager    regression
    Click Manager Login
    Search Customer    Hermoine
    Page Should Contain    Hermoine

TC_MGR_005 Verify Delete Customer
    [Tags]    manager    regression
    Click Manager Login
    Search Customer    Neville
    Delete Customer
